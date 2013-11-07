jQuery ->
  fieldsCount = $('form .fields').length
  maxFieldsCount = 1
  $addLink = $('a.add_nested_fields')
  
  toggleAddLink = ->
    $addLink.toggle fieldsCount < maxFieldsCount

  $(document).on 'nested:fieldAdded:comment', ->
    console.log("added")
    fieldsCount += 1
    toggleAddLink()

  # TODO: change to nested:fieldRemoved:financial_tax but it's not being triggered
  # I've created an issue on https://github.com/ryanb/nested_form/issues/294
  $(document).on 'nested:fieldRemoved', ->
    console.log("removed")
    fieldsCount -= 1
    toggleAddLink()
    
# count existing nested fields after page was loaded
  toggleAddLink()
