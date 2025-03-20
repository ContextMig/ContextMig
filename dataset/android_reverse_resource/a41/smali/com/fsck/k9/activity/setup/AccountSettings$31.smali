.class Lcom/fsck/k9/activity/setup/AccountSettings$31;
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
    .line 716
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$31;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 719
    check-cast p1, Landroid/preference/PreferenceScreen;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 720
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$31;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const v2, 0x7f0702d4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 724
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 725
    const/4 v1, 0x1

    return v1
.end method
