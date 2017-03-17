class Room extends React.Component {
  render () {
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
