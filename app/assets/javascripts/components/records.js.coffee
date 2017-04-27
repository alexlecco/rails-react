@Records = React.createClass
  getInitialState: -> # initialize component's properties
    records: @props.date
  getDefaultProps: -> # generate initial state
    records: []
  render: -> # render component
    React.DOM.div
      className: 'records'
      React.DOM.h2
        className: 'title'
        'Records'

### equivalent in JSX
  render: ->
    `<div className="records">
      <h2 className="title"> Records </h2>
    </div>`
###
