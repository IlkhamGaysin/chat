class RoomsTable extends React.Component {
  renderItems () {
    const rooms = this.props.rooms

    return rooms.map((room) => <Room key={ room.id } room={ room } />)
  }

  render () {
    return (
     <div className="row">
        <div className="columns">
          <table className="table table-striped">
            <thead>
              <tr>
                <th>Rooms</th>
              </tr>
            </thead>
            <tbody>
              { this.renderItems() }
            </tbody>
          </table>
        </div>
     </div>
    )
  }
}
