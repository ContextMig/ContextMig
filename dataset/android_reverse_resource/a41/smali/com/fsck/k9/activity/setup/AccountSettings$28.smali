.class Lcom/fsck/k9/activity/setup/AccountSettings$28;
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
    .line 680
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$28;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 682
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$28;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$2902(Lcom/fsck/k9/activity/setup/AccountSettings;Z)Z

    .line 683
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$28;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3000(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    .line 684
    return v1
.end method
