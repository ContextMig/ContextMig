.class Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;
.super Ljava/lang/Object;
.source "AttachmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/messageview/AttachmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentAndResolvedActivitiesCount"
.end annotation


# instance fields
.field private activitiesCount:I

.field private intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activitiesCount"    # I

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->intent:Landroid/content/Intent;

    .line 292
    iput p2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->activitiesCount:I

    .line 293
    return-void
.end method


# virtual methods
.method public containsFileUri()Z
    .locals 2

    .prologue
    .line 308
    const-string v0, "file"

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResolvedActivities()Z
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->activitiesCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
