.class Lcom/fsck/k9/activity/setup/FolderSettings$1;
.super Ljava/lang/Object;
.source "FolderSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/FolderSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/FolderSettings;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/FolderSettings;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/FolderSettings$1;->this$0:Lcom/fsck/k9/activity/setup/FolderSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "summary":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FolderSettings$1;->this$0:Lcom/fsck/k9/activity/setup/FolderSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/FolderSettings;->access$000(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "index":I
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FolderSettings$1;->this$0:Lcom/fsck/k9/activity/setup/FolderSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/FolderSettings;->access$000(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FolderSettings$1;->this$0:Lcom/fsck/k9/activity/setup/FolderSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/FolderSettings;->access$000(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/FolderSettings$1;->this$0:Lcom/fsck/k9/activity/setup/FolderSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/FolderSettings;->access$000(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x0

    return v2
.end method
