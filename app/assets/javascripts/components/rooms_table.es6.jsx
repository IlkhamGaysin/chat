class RoomsTable extends React.Component {
  static propTypes() {
    return {
      rooms: React.PropTypes.arrayOf(
        React.PropTypes.shape({
          id: React.PropTypes.number.isRequired,
          title: React.PropTypes.string.isRequired
        })
      )
    }
  }

  renderItems() {
    const rooms = this.props.rooms

    return rooms.map((room) => <Room key={ room.id } room={ room } />)
  }

  render() {
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
