.class Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;
.super Ljava/lang/Object;
.source "ContactPictureLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/misc/ContactPictureLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallbackGlideParams"
.end annotation


# instance fields
.field final address:Lcom/fsck/k9/mail/Address;

.field final synthetic this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/mail/Address;)V
    .locals 0
    .param p2, "address"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;->address:Lcom/fsck/k9/mail/Address;

    .line 237
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
