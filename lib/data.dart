class User {
  final String username;
  final String avatar;
  final String subscribers;

  const User({
    required this.username,
    required this.avatar,
    required this.subscribers,
  });
}

const User currentUser = User(
    username: "Bruno Martins",
    avatar:
        "https://yt3.ggpht.com/yti/AJo0G0mCJKkpIRlqx_npt-DrtKwGWlojR-2EZ5crhm_SqQ=s88-c-k-c0x00ffffff-no-rj-mo",
    subscribers: "150k");

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: const User(
        username: "Compilado do Código Fonte TV [OFICIAL]",
        avatar:
            "https://yt3.ggpht.com/bLRYGwBq_N3zp2Ukq9Q_7y102jyjbuPmLDLO0Bky0k8c-ax4HSajghk6t5lERfn1_rZU9Xaw=s48-c-k-c0x00ffffff-no-rj",
        subscribers: "9.56k"),
    title:
        '.NET MAUI recebe recursos no Visual Studio 2022 [Cortes do Compilado]',
    thumbnailUrl: 'https://i.ytimg.com/vi/Yq0QwxZrhHI/hq720.jpg',
    duration: '3:00',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: const User(
        username: "MrBeast",
        avatar:
            "https://yt3.ggpht.com/ytc/AMLnZu_NBXmT9J0H9uL94tZm6YxOGdMn0utqYJh1aQlv4A=s68-c-k-c0x00ffffff-no-rj",
        subscribers: "9.56k"),
    id: 'vrPk6LB9bjo',
    title: "I Hunted 100 People For 1,000,000",
    thumbnailUrl: 'https://i.ytimg.com/vi/65fN_OUawjk/hq720.jpg',
    duration: '12:23',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: const User(
        username: "Code Pioneers",
        avatar:
            "https://yt3.ggpht.com/ytc/AMLnZu81GFOTtgtSexGi_DgTJnuRH3sAccO1cC57C8Hc=s68-c-k-c0x00ffffff-no-rj",
        subscribers: "9.56k"),
    title: 'Coding in Chicago v2.0 | 🎧 24/7 LoFi Hip-Hop Radio',
    thumbnailUrl: 'https://i.ytimg.com/vi/8YA825ZNAIE/hq720_live.jpg',
    duration: '1:56:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: const User(
        username: "Code Pioneers",
        avatar:
            "https://yt3.ggpht.com/ytc/AMLnZu81GFOTtgtSexGi_DgTJnuRH3sAccO1cC57C8Hc=s68-c-k-c0x00ffffff-no-rj",
        subscribers: "9.56k"),
    title: 'Coding in Chicago v2.0 | 🎧 24/7 LoFi Hip-Hop Radio',
    thumbnailUrl: 'https://i.ytimg.com/vi/8YA825ZNAIE/hq720_live.jpg',
    duration: '1:56:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: currentUser,
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/rJKN_880b-M/0.jpg',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: currentUser,
    title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: currentUser,
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
  ),
];
