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

  $(document).on 'nested:fieldRemoved:comment', ->
    console.log("removed")
    fieldsCount -= 1
    toggleAddLink()
    
# count existing nested fields after page was loaded
  toggleAddLink()
