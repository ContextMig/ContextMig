.class public Lme/writeily/renderer/MarkDownRenderer;
.super Ljava/lang/Object;
.source "MarkDownRenderer.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field andDown:Lcom/commonsware/cwac/anddown/AndDown;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/renderer/MarkDownRenderer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x69be217feb6915e1L

    const-string v2, "me/writeily/renderer/MarkDownRenderer"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/renderer/MarkDownRenderer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/renderer/MarkDownRenderer;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 12
    new-instance v1, Lcom/commonsware/cwac/anddown/AndDown;

    invoke-direct {v1}, Lcom/commonsware/cwac/anddown/AndDown;-><init>()V

    iput-object v1, p0, Lme/writeily/renderer/MarkDownRenderer;->andDown:Lcom/commonsware/cwac/anddown/AndDown;

    aput-boolean v2, v0, v2

    return-void
.end method

.method private getThemeFromPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/renderer/MarkDownRenderer;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0600b4

    const/16 v3, 0x9

    aput-boolean v4, v0, v3

    .line 34
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private themeStringFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/renderer/MarkDownRenderer;->$jacocoInit()[Z

    move-result-object v1

    .line 21
    invoke-direct {p0, p1}, Lme/writeily/renderer/MarkDownRenderer;->getThemeFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 22
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 23
    const v2, 0x7f06007b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "<html><head><style type=\"text/css\">html,body{padding:4px 8px 4px 8px;font-family:\'sans-serif-light\';color:#ffffff;background-color:#303030;}h1,h2,h3,h4,h5,h6{font-family:\'sans-serif-condensed\';}a{color:#388E3C;text-decoration:underline;}a:visited{color:#dddddd;}img{height:auto;width:325px;margin:auto;}</style></head><body>"

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "<html><head><style type=\"text/css\">html,body{padding:4px 8px 4px 8px;font-family:\'sans-serif-light\';color:#303030;}h1,h2,h3,h4,h5,h6{font-family:\'sans-serif-condensed\';}a{color:#388E3C;text-decoration:underline;}img{height:auto;width:325px;margin:auto;}</style></head><body>"

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 29
    :cond_1
    const-string v0, ""

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public renderMarkdown(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/renderer/MarkDownRenderer;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lme/writeily/renderer/MarkDownRenderer;->themeStringFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/renderer/MarkDownRenderer;->andDown:Lcom/commonsware/cwac/anddown/AndDown;

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 16
    invoke-virtual {v2, p1}, Lcom/commonsware/cwac/anddown/AndDown;->markdownToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    return-object v1
.end method
