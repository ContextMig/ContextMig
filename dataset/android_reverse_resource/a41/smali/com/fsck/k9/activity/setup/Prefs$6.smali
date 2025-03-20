.class Lcom/fsck/k9/activity/setup/Prefs$6;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/Prefs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

.field final synthetic this$0:Lcom/fsck/k9/activity/setup/Prefs;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/Prefs;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$6;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Lcom/fsck/k9/activity/setup/Prefs$6$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/setup/Prefs$6$1;-><init>(Lcom/fsck/k9/activity/setup/Prefs$6;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs$6;->callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 416
    invoke-static {}, Lcom/fsck/k9/helper/FileBrowserHelper;->getInstance()Lcom/fsck/k9/helper/FileBrowserHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$6;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    new-instance v2, Ljava/io/File;

    .line 418
    invoke-static {}, Lcom/fsck/k9/K9;->getAttachmentDefaultPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/Prefs$6;->callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    .line 417
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/fsck/k9/helper/FileBrowserHelper;->showFileBrowserActivity(Landroid/app/Activity;Ljava/io/File;ILcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)Z

    .line 421
    return v4
.end method
