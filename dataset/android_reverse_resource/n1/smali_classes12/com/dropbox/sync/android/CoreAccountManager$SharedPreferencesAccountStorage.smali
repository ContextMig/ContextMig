.class Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;
.super Ljava/lang/Object;
.source "CoreAccountManager.java"

# interfaces
.implements Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedPreferencesAccountStorage"
.end annotation


# static fields
.field private static final PREFKEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final PREFKEY_APPKEY:Ljava/lang/String; = "app_key"


# instance fields
.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/dropbox/sync/android/CoreLogger;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "log"    # Lcom/dropbox/sync/android/CoreLogger;

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mPrefs:Landroid/content/SharedPreferences;

    .line 705
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 706
    return-void
.end method


# virtual methods
.method public getAccounts(Ljava/lang/String;Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;)Ljava/util/List;
    .locals 12
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "acctMgr"    # Lcom/dropbox/sync/android/CoreAccountManager;
    .param p3, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/CoreAccountManager;",
            "Lcom/dropbox/sync/android/CoreConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAccount;>;"
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "app_key"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, "persistentAppKey":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 716
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "accounts"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 717
    .local v7, "strAccounts":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 719
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 720
    .local v5, "jsonAccounts":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-ge v4, v8, :cond_0

    .line 722
    :try_start_1
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {p2, p3, v8}, Lcom/dropbox/sync/android/DbxAccount;->fromJSON(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;Lorg/json/JSONObject;)Lcom/dropbox/sync/android/DbxAccount;

    move-result-object v1

    .line 723
    .local v1, "acct":Lcom/dropbox/sync/android/DbxAccount;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_1 .. :try_end_1} :catch_3

    .line 720
    .end local v1    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 724
    :catch_0
    move-exception v2

    .line 725
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreAccountManager;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Ignoring malformed account in persistent linked accounts set: "

    invoke-virtual {v8, v9, v10, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 732
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "i":I
    .end local v5    # "jsonAccounts":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 733
    .restart local v2    # "e":Lorg/json/JSONException;
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreAccountManager;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Error parsing persistent credentials: "

    invoke-virtual {v8, v9, v10, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 738
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v7    # "strAccounts":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 726
    .restart local v4    # "i":I
    .restart local v5    # "jsonAccounts":Lorg/json/JSONArray;
    .restart local v7    # "strAccounts":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 727
    .local v3, "ex":Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException;
    :try_start_3
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreAccountManager;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring account with obsolete data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 728
    .end local v3    # "ex":Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException;
    :catch_3
    move-exception v2

    .line 729
    .local v2, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreAccountManager;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Ignoring persistent account with load error: "

    invoke-virtual {v8, v9, v10, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public setAccounts(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAccount;>;"
    iget-object v4, p0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 744
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 745
    const-string v4, "app_key"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 747
    .local v3, "jsonAccounts":Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAccount;

    .line 748
    .local v0, "acct":Lcom/dropbox/sync/android/DbxAccount;
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 750
    .end local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    :cond_0
    const-string v4, "accounts"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 752
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 753
    return-void
.end method
