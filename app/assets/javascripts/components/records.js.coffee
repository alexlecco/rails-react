@Records = React.createClass
  getInitialState: -> # initialize component's properties
    records: @props.date
  getDefaultProps: -> # generate initial state
    records: []
  addRecord: (record) ->
    records = @state.records.slice()
    records.push record
    @setState records: records
  render: -> # render component
    React.DOM.div
      className: 'records'
      React.DOM.h2
        className: 'title'
        'Records'
      React.createElement RecordForm, handleNewRecord: @addRecord
      React.DOM.hr null
      React.DOM.table
        className: 'table table-bordered'
        React-DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Date'
            React.DOM.th null, 'Title'
            React.DOM.th null, 'Amount'
          React.DOM.tbody null,
            for records in @state.records
              React.createElement Record, key: record.id, record: record

### equivalent in JSX
  render: ->
    `<div className="records">
      <h2 className="title"> Records </h2>
    </div>`
###
