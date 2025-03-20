.class Lcom/fsck/k9/activity/setup/AccountSettings$24;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$24;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$24;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onChooseChipColor()V

    .line 651
    const/4 v0, 0x0

    return v0
.end method
