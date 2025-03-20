.class Lcom/fsck/k9/activity/setup/Prefs$6$1;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/Prefs$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/setup/Prefs$6;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/Prefs$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/setup/Prefs$6;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$6$1;->this$1:Lcom/fsck/k9/activity/setup/Prefs$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public onPathEntered(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs$6$1;->this$1:Lcom/fsck/k9/activity/setup/Prefs$6;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs$6;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/Prefs;->access$600(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    invoke-static {p1}, Lcom/fsck/k9/K9;->setAttachmentDefaultPath(Ljava/lang/String;)V

    .line 430
    return-void
.end method
