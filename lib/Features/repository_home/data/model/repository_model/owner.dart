class Owner {
  String? login;
  num? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;

  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: json['login']?.toString(),
        id: num.tryParse(json['id'].toString()),
        nodeId: json['node_id']?.toString(),
        avatarUrl: json['avatar_url']?.toString(),
        gravatarId: json['gravatar_id']?.toString(),
        url: json['url']?.toString(),
        htmlUrl: json['html_url']?.toString(),
        followersUrl: json['followers_url']?.toString(),
        followingUrl: json['following_url']?.toString(),
        gistsUrl: json['gists_url']?.toString(),
        starredUrl: json['starred_url']?.toString(),
        subscriptionsUrl: json['subscriptions_url']?.toString(),
        organizationsUrl: json['organizations_url']?.toString(),
        reposUrl: json['repos_url']?.toString(),
        eventsUrl: json['events_url']?.toString(),
        receivedEventsUrl: json['received_events_url']?.toString(),
        type: json['type']?.toString(),
        siteAdmin: json['site_admin']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (login != null) 'login': login,
        if (id != null) 'id': id,
        if (nodeId != null) 'node_id': nodeId,
        if (avatarUrl != null) 'avatar_url': avatarUrl,
        if (gravatarId != null) 'gravatar_id': gravatarId,
        if (url != null) 'url': url,
        if (htmlUrl != null) 'html_url': htmlUrl,
        if (followersUrl != null) 'followers_url': followersUrl,
        if (followingUrl != null) 'following_url': followingUrl,
        if (gistsUrl != null) 'gists_url': gistsUrl,
        if (starredUrl != null) 'starred_url': starredUrl,
        if (subscriptionsUrl != null) 'subscriptions_url': subscriptionsUrl,
        if (organizationsUrl != null) 'organizations_url': organizationsUrl,
        if (reposUrl != null) 'repos_url': reposUrl,
        if (eventsUrl != null) 'events_url': eventsUrl,
        if (receivedEventsUrl != null) 'received_events_url': receivedEventsUrl,
        if (type != null) 'type': type,
        if (siteAdmin != null) 'site_admin': siteAdmin,
      };
}
