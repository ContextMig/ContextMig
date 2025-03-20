.class Lcom/fsck/k9/activity/setup/AccountSettings$17;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 512
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$17;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newVal"    # Ljava/lang/Object;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$17;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newVal":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$1800(Lcom/fsck/k9/activity/setup/AccountSettings;Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x1

    return v0
.end method
