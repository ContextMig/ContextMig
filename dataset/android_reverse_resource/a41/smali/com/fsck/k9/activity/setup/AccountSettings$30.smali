.class Lcom/fsck/k9/activity/setup/AccountSettings$30;
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
    .line 705
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$30;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 707
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 708
    .local v0, "value":J
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$30;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3200(Lcom/fsck/k9/activity/setup/AccountSettings;)Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setValue(J)V

    .line 709
    const/4 v2, 0x0

    return v2
.end method
