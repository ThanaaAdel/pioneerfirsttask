import 'package:pioneerfirsttask/Features/repository_home/domain/entities/repository_entity.dart';

import 'owner.dart';

class RepositoryModel extends RepositoryEntity {
  num? id;
  String? nodeId;
  String? name;
  String? fullName;
  bool? private;
  Owner? owner;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? forksUrl;
  String? keysUrl;
  String? collaboratorsUrl;
  String? teamsUrl;
  String? hooksUrl;
  String? issueEventsUrl;
  String? eventsUrl;
  String? assigneesUrl;
  String? branchesUrl;
  String? tagsUrl;
  String? blobsUrl;
  String? gitTagsUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? statusesUrl;
  String? languagesUrl;
  String? stargazersUrl;
  String? contributorsUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? commitsUrl;
  String? gitCommitsUrl;
  String? commentsUrl;
  String? issueCommentUrl;
  String? contentsUrl;
  String? compareUrl;
  String? mergesUrl;
  String? archiveUrl;
  String? downloadsUrl;
  String? issuesUrl;
  String? pullsUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? labelsUrl;
  String? releasesUrl;
  String? deploymentsUrl;
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? gitUrl;
  String? sshUrl;
  String? cloneUrl;
  String? svnUrl;
  dynamic homepage;
  num? size;
  num? stargazersCount;
  num? watchersCount;
  String? language;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasDownloads;
  bool? hasWiki;
  bool? hasPages;
  bool? hasDiscussions;
  num? forksCount;
  dynamic mirrorUrl;
  bool? archived;
  bool? disabled;
  num? openIssuesCount;
  dynamic license;
  bool? allowForking;
  bool? isTemplate;
  bool? webCommitSignoffRequired;
  List<dynamic>? topics;
  String? visibility;
  num? forks;
  num? openIssues;
  num? watchers;
  String? defaultBranch;
  num? score;

  RepositoryModel({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.hasDiscussions,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.allowForking,
    this.isTemplate,
    this.webCommitSignoffRequired,
    this.topics,
    this.visibility,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
    this.score,
  }) : super(
            nameRepository: name!,
            avatarImage: owner!.avatarUrl!,
            descriptionFromRepo: description!,
            idOwner:owner.id,
            langouge: language!,
            urlGithupOwner: owner.gistsUrl!);

  factory RepositoryModel.fromJson(Map<String, dynamic> json) {
    return RepositoryModel(
      id: num.tryParse(json['id'].toString()),
      nodeId: json['node_id']?.toString(),
      name: json['name']?.toString(),
      fullName: json['full_name']?.toString(),
      private: json['private']?.toString().contains("true"),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(Map<String, dynamic>.from(json['owner'])),
      htmlUrl: json['html_url']?.toString(),
      description: json['description']?.toString(),
      fork: json['fork']?.toString().contains("true"),
      url: json['url']?.toString(),
      forksUrl: json['forks_url']?.toString(),
      keysUrl: json['keys_url']?.toString(),
      collaboratorsUrl: json['collaborators_url']?.toString(),
      teamsUrl: json['teams_url']?.toString(),
      hooksUrl: json['hooks_url']?.toString(),
      issueEventsUrl: json['issue_events_url']?.toString(),
      eventsUrl: json['events_url']?.toString(),
      assigneesUrl: json['assignees_url']?.toString(),
      branchesUrl: json['branches_url']?.toString(),
      tagsUrl: json['tags_url']?.toString(),
      blobsUrl: json['blobs_url']?.toString(),
      gitTagsUrl: json['git_tags_url']?.toString(),
      gitRefsUrl: json['git_refs_url']?.toString(),
      treesUrl: json['trees_url']?.toString(),
      statusesUrl: json['statuses_url']?.toString(),
      languagesUrl: json['languages_url']?.toString(),
      stargazersUrl: json['stargazers_url']?.toString(),
      contributorsUrl: json['contributors_url']?.toString(),
      subscribersUrl: json['subscribers_url']?.toString(),
      subscriptionUrl: json['subscription_url']?.toString(),
      commitsUrl: json['commits_url']?.toString(),
      gitCommitsUrl: json['git_commits_url']?.toString(),
      commentsUrl: json['comments_url']?.toString(),
      issueCommentUrl: json['issue_comment_url']?.toString(),
      contentsUrl: json['contents_url']?.toString(),
      compareUrl: json['compare_url']?.toString(),
      mergesUrl: json['merges_url']?.toString(),
      archiveUrl: json['archive_url']?.toString(),
      downloadsUrl: json['downloads_url']?.toString(),
      issuesUrl: json['issues_url']?.toString(),
      pullsUrl: json['pulls_url']?.toString(),
      milestonesUrl: json['milestones_url']?.toString(),
      notificationsUrl: json['notifications_url']?.toString(),
      labelsUrl: json['labels_url']?.toString(),
      releasesUrl: json['releases_url']?.toString(),
      deploymentsUrl: json['deployments_url']?.toString(),
      createdAt: json['created_at']?.toString(),
      updatedAt: json['updated_at']?.toString(),
      pushedAt: json['pushed_at']?.toString(),
      gitUrl: json['git_url']?.toString(),
      sshUrl: json['ssh_url']?.toString(),
      cloneUrl: json['clone_url']?.toString(),
      svnUrl: json['svn_url']?.toString(),
      homepage: json['homepage'],
      size: num.tryParse(json['size'].toString()),
      stargazersCount: num.tryParse(json['stargazers_count'].toString()),
      watchersCount: num.tryParse(json['watchers_count'].toString()),
      language: json['language']?.toString(),
      hasIssues: json['has_issues']?.toString().contains("true"),
      hasProjects: json['has_projects']?.toString().contains("true"),
      hasDownloads: json['has_downloads']?.toString().contains("true"),
      hasWiki: json['has_wiki']?.toString().contains("true"),
      hasPages: json['has_pages']?.toString().contains("true"),
      hasDiscussions: json['has_discussions']?.toString().contains("true"),
      forksCount: num.tryParse(json['forks_count'].toString()),
      mirrorUrl: json['mirror_url'],
      archived: json['archived']?.toString().contains("true"),
      disabled: json['disabled']?.toString().contains("true"),
      openIssuesCount: num.tryParse(json['open_issues_count'].toString()),
      license: json['license'],
      allowForking: json['allow_forking']?.toString().contains("true"),
      isTemplate: json['is_template']?.toString().contains("true"),
      webCommitSignoffRequired:
          json['web_commit_signoff_required']?.toString().contains("true"),
      topics: List<dynamic>.from(json['topics'] ?? []),
      visibility: json['visibility']?.toString(),
      forks: num.tryParse(json['forks'].toString()),
      openIssues: num.tryParse(json['open_issues'].toString()),
      watchers: num.tryParse(json['watchers'].toString()),
      defaultBranch: json['default_branch']?.toString(),
      score: num.tryParse(json['score'].toString()),
    );
  }

  Map<String, dynamic> toJson() => {
        if (id != null) 'id': id,
        if (nodeId != null) 'node_id': nodeId,
        if (name != null) 'name': name,
        if (fullName != null) 'full_name': fullName,
        if (private != null) 'private': private,
        if (owner != null) 'owner': owner?.toJson(),
        if (htmlUrl != null) 'html_url': htmlUrl,
        if (description != null) 'description': description,
        if (fork != null) 'fork': fork,
        if (url != null) 'url': url,
        if (forksUrl != null) 'forks_url': forksUrl,
        if (keysUrl != null) 'keys_url': keysUrl,
        if (collaboratorsUrl != null) 'collaborators_url': collaboratorsUrl,
        if (teamsUrl != null) 'teams_url': teamsUrl,
        if (hooksUrl != null) 'hooks_url': hooksUrl,
        if (issueEventsUrl != null) 'issue_events_url': issueEventsUrl,
        if (eventsUrl != null) 'events_url': eventsUrl,
        if (assigneesUrl != null) 'assignees_url': assigneesUrl,
        if (branchesUrl != null) 'branches_url': branchesUrl,
        if (tagsUrl != null) 'tags_url': tagsUrl,
        if (blobsUrl != null) 'blobs_url': blobsUrl,
        if (gitTagsUrl != null) 'git_tags_url': gitTagsUrl,
        if (gitRefsUrl != null) 'git_refs_url': gitRefsUrl,
        if (treesUrl != null) 'trees_url': treesUrl,
        if (statusesUrl != null) 'statuses_url': statusesUrl,
        if (languagesUrl != null) 'languages_url': languagesUrl,
        if (stargazersUrl != null) 'stargazers_url': stargazersUrl,
        if (contributorsUrl != null) 'contributors_url': contributorsUrl,
        if (subscribersUrl != null) 'subscribers_url': subscribersUrl,
        if (subscriptionUrl != null) 'subscription_url': subscriptionUrl,
        if (commitsUrl != null) 'commits_url': commitsUrl,
        if (gitCommitsUrl != null) 'git_commits_url': gitCommitsUrl,
        if (commentsUrl != null) 'comments_url': commentsUrl,
        if (issueCommentUrl != null) 'issue_comment_url': issueCommentUrl,
        if (contentsUrl != null) 'contents_url': contentsUrl,
        if (compareUrl != null) 'compare_url': compareUrl,
        if (mergesUrl != null) 'merges_url': mergesUrl,
        if (archiveUrl != null) 'archive_url': archiveUrl,
        if (downloadsUrl != null) 'downloads_url': downloadsUrl,
        if (issuesUrl != null) 'issues_url': issuesUrl,
        if (pullsUrl != null) 'pulls_url': pullsUrl,
        if (milestonesUrl != null) 'milestones_url': milestonesUrl,
        if (notificationsUrl != null) 'notifications_url': notificationsUrl,
        if (labelsUrl != null) 'labels_url': labelsUrl,
        if (releasesUrl != null) 'releases_url': releasesUrl,
        if (deploymentsUrl != null) 'deployments_url': deploymentsUrl,
        if (createdAt != null) 'created_at': createdAt,
        if (updatedAt != null) 'updated_at': updatedAt,
        if (pushedAt != null) 'pushed_at': pushedAt,
        if (gitUrl != null) 'git_url': gitUrl,
        if (sshUrl != null) 'ssh_url': sshUrl,
        if (cloneUrl != null) 'clone_url': cloneUrl,
        if (svnUrl != null) 'svn_url': svnUrl,
        if (homepage != null) 'homepage': homepage,
        if (size != null) 'size': size,
        if (stargazersCount != null) 'stargazers_count': stargazersCount,
        if (watchersCount != null) 'watchers_count': watchersCount,
        if (language != null) 'language': language,
        if (hasIssues != null) 'has_issues': hasIssues,
        if (hasProjects != null) 'has_projects': hasProjects,
        if (hasDownloads != null) 'has_downloads': hasDownloads,
        if (hasWiki != null) 'has_wiki': hasWiki,
        if (hasPages != null) 'has_pages': hasPages,
        if (hasDiscussions != null) 'has_discussions': hasDiscussions,
        if (forksCount != null) 'forks_count': forksCount,
        if (mirrorUrl != null) 'mirror_url': mirrorUrl,
        if (archived != null) 'archived': archived,
        if (disabled != null) 'disabled': disabled,
        if (openIssuesCount != null) 'open_issues_count': openIssuesCount,
        if (license != null) 'license': license,
        if (allowForking != null) 'allow_forking': allowForking,
        if (isTemplate != null) 'is_template': isTemplate,
        if (webCommitSignoffRequired != null)
          'web_commit_signoff_required': webCommitSignoffRequired,
        if (topics != null) 'topics': topics,
        if (visibility != null) 'visibility': visibility,
        if (forks != null) 'forks': forks,
        if (openIssues != null) 'open_issues': openIssues,
        if (watchers != null) 'watchers': watchers,
        if (defaultBranch != null) 'default_branch': defaultBranch,
        if (score != null) 'score': score,
      };
}
