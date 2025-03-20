.class Lcom/fsck/k9/activity/setup/Prefs$5;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/Prefs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/Prefs;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/Prefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$5;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 395
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "value":Ljava/lang/String;
    const-string v1, "apg-placeholder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$5;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/Prefs;->access$500(Lcom/fsck/k9/activity/setup/Prefs;)Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setValue(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$5;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->showDialog(I)V

    .line 402
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$5;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/Prefs;->access$500(Lcom/fsck/k9/activity/setup/Prefs;)Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
