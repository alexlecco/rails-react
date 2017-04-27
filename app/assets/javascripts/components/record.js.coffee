@Record = React.createClass
  render: ->
    React.DOM.tr null,
      ReactDOM.td null, @props.record.date
      ReactDOM.td null, @props.record.title
      ReactDOM.td null, amountFormat(@props.record.amount)
