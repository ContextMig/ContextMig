.class Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;
.super Ljava/lang/Object;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/pop3/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pop3Capabilities"
.end annotation


# instance fields
.field public authPlain:Z

.field public cramMD5:Z

.field public external:Z

.field public stls:Z

.field public top:Z

.field public uidl:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1223
    const-string v0, "CRAM-MD5 %b, PLAIN %b, STLS %b, TOP %b, UIDL %b, EXTERNAL %b"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->cramMD5:Z

    .line 1224
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->authPlain:Z

    .line 1225
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->stls:Z

    .line 1226
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z

    .line 1227
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->uidl:Z

    .line 1228
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->external:Z

    .line 1229
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1223
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
