.class Lcom/fsck/k9/activity/setup/AccountSettings$4;
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
    .line 287
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 290
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/Account$QuoteStyle;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$QuoteStyle;

    move-result-object v1

    .line 291
    .local v1, "style":Lcom/fsck/k9/Account$QuoteStyle;
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$300(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, "index":I
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$300(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$300(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    sget-object v2, Lcom/fsck/k9/Account$QuoteStyle;->PREFIX:Lcom/fsck/k9/Account$QuoteStyle;

    if-ne v1, v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$200(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 300
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 296
    :cond_1
    sget-object v2, Lcom/fsck/k9/Account$QuoteStyle;->HEADER:Lcom/fsck/k9/Account$QuoteStyle;

    if-ne v1, v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$200(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
