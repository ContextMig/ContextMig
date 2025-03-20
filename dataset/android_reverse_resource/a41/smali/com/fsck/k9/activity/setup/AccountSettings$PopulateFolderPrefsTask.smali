.class Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;
.super Landroid/os/AsyncTask;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopulateFolderPrefsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field allFolderLabels:[Ljava/lang/String;

.field allFolderValues:[Ljava/lang/String;

.field folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .locals 1

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1005
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->folders:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/activity/setup/AccountSettings;Lcom/fsck/k9/activity/setup/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p2, "x1"    # Lcom/fsck/k9/activity/setup/AccountSettings$1;

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1004
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 1012
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->folders:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->folders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1020
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/fsck/k9/mail/Folder;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1021
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Folder;

    .line 1022
    .local v0, "folder":Lcom/fsck/k9/mail/Folder;
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1023
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1027
    .end local v0    # "folder":Lcom/fsck/k9/mail/Folder;
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->folders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    .line 1028
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->folders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    .line 1030
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    const-string v4, "-NONE-"

    aput-object v4, v3, v5

    .line 1031
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    const-string v4, "-NONE-"

    aput-object v4, v3, v5

    .line 1033
    const/4 v1, 0x1

    .line 1034
    .local v1, "i":I
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->folders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Folder;

    .line 1035
    .restart local v0    # "folder":Lcom/fsck/k9/mail/Folder;
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1036
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1037
    add-int/lit8 v1, v1, 0x1

    .line 1038
    goto :goto_2

    .line 1039
    .end local v0    # "folder":Lcom/fsck/k9/mail/Folder;
    :cond_2
    const/4 v3, 0x0

    return-object v3

    .line 1013
    .end local v1    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/fsck/k9/mail/Folder;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1004
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "res"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x1

    .line 1070
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4100(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1072
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4000(Lcom/fsck/k9/activity/setup/AccountSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4200(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4300(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4400(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3800(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4500(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderLabels:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->allFolderValues:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4600(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1079
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3800(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1080
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1081
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1082
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1084
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1044
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const-string v3, "account_setup_auto_expand_folder"

    invoke-virtual {v1, v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {v2, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3402(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 1045
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1046
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const-string v3, "archive_folder"

    invoke-virtual {v1, v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {v2, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3502(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 1047
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1048
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const-string v3, "drafts_folder"

    invoke-virtual {v1, v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {v2, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3602(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 1049
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1050
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const-string v3, "sent_folder"

    invoke-virtual {v1, v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {v2, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3702(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 1051
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1052
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const-string v3, "spam_folder"

    invoke-virtual {v1, v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {v2, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3802(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 1053
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3800(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1054
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const-string v3, "trash_folder"

    invoke-virtual {v1, v3}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {v2, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3902(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;

    .line 1055
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1057
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$4000(Lcom/fsck/k9/activity/setup/AccountSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    const-string v2, "folders"

    .line 1059
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1060
    .local v0, "foldersCategory":Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1061
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3800(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1062
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1063
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1064
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->access$3900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1066
    .end local v0    # "foldersCategory":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
