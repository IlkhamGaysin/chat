class Room extends React.Component {
  static propTypes() {
    return {
      room: React.PropTypes.shape({
        id: React.PropTypes.number.isRequired,
        title: React.PropTypes.string.isRequired
      })
    }
  }

  render() {
    return (
      <tr>
        <td>
          <a href={ this.props.room.links.self }>
            { this.props.room.title }
          </a>
        </td>
      </tr>
    )
  }
}
