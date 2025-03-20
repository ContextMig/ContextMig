.class Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;
.super Ljava/lang/Object;
.source "DbxAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppConfigStrings"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final deviceId:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->userAgent:Ljava/lang/String;

    .line 482
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->appName:Ljava/lang/String;

    .line 483
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->appVersion:Ljava/lang/String;

    .line 484
    iput-object p4, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->deviceId:Ljava/lang/String;

    .line 485
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    invoke-static {}, Lcom/dropbox/sync/android/DbxAccountManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using app identifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->deviceId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppConfigStrings(userAgent=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", appName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", appVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", deviceId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", appName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
