.class Lcom/fsck/k9/activity/setup/Prefs$2;
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
    .line 305
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$2;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 307
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 308
    .local v0, "checked":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$2;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/Prefs;->access$100(Lcom/fsck/k9/activity/setup/Prefs;)V

    .line 310
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$2;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/Prefs;->access$200(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f070250

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$2;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/Prefs;->access$200(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    const/4 v1, 0x0

    return v1

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/Prefs$2;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/Prefs;->access$200(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f070251

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method
