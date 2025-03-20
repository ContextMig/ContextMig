.class public Lcom/fsck/k9/preferences/SettingsImporter;
.super Ljava/lang/Object;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;,
        Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;,
        Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;,
        Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;,
        Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;,
        Lcom/fsck/k9/preferences/SettingsImporter$Imported;,
        Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;,
        Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;,
        Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;,
        Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;,
        Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIdentity(Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;Ljava/util/List;)I
    .locals 4
    .param p0, "identity"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 592
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    .line 593
    .local v0, "existingIdentity":Lcom/fsck/k9/Identity;
    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    .end local v0    # "existingIdentity":Lcom/fsck/k9/Identity;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 591
    .restart local v0    # "existingIdentity":Lcom/fsck/k9/Identity;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "existingIdentity":Lcom/fsck/k9/Identity;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getAccountDisplayName(Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;)Ljava/lang/String;
    .locals 3
    .param p0, "account"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    .line 1022
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->identities:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->identities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->identities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;

    iget-object v0, v1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->email:Ljava/lang/String;

    .line 1025
    :cond_0
    return-object v0
.end method

.method public static getImportStreamContents(Ljava/io/InputStream;)Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
    .locals 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-static {p0, v7, v8, v9}, Lcom/fsck/k9/preferences/SettingsImporter;->parseSettings(Ljava/io/InputStream;ZLjava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$Imported;

    move-result-object v5

    .line 118
    .local v5, "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    iget-object v7, v5, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    if-eqz v7, :cond_0

    .line 120
    .local v4, "globalSettings":Z
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    iget-object v6, v5, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 124
    iget-object v6, v5, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;

    .line 125
    .local v0, "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    invoke-static {v0}, Lcom/fsck/k9/preferences/SettingsImporter;->getAccountDisplayName(Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "accountName":Ljava/lang/String;
    new-instance v7, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    iget-object v8, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v1, v8, v9}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 134
    .end local v0    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    .end local v4    # "globalSettings":Z
    .end local v5    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    throw v3

    .end local v3    # "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    .restart local v5    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    :cond_0
    move v4, v6

    .line 118
    goto :goto_0

    .line 132
    .restart local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    .restart local v4    # "globalSettings":Z
    :cond_1
    :try_start_1
    new-instance v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v2, v7}, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;-><init>(ZLjava/util/List;Lcom/fsck/k9/preferences/SettingsImporter$1;)V
    :try_end_1
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    .line 136
    .end local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    .end local v4    # "globalSettings":Z
    .end local v5    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    :catch_1
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/fsck/k9/preferences/SettingsImportExportException;

    invoke-direct {v6, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 671
    .local v0, "eventType":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 672
    const-string v1, ""

    .line 674
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static importAccount(Landroid/content/Context;Lcom/fsck/k9/preferences/StorageEditor;ILcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;Z)Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    .locals 35
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;
    .param p2, "contentVersion"    # I
    .param p3, "account"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .param p4, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v25, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v4, v6}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    .line 312
    .local v25, "original":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v9

    .line 313
    .local v9, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v9}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v18

    .line 315
    .local v18, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    .line 316
    .local v5, "uuid":Ljava/lang/String;
    invoke-virtual {v9, v5}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v8

    .line 317
    .local v8, "existingAccount":Lcom/fsck/k9/Account;
    if-eqz p4, :cond_2

    if-eqz v8, :cond_2

    const/4 v14, 0x1

    .line 319
    .local v14, "mergeImportedAccount":Z
    :goto_0
    if-nez p4, :cond_0

    if-eqz v8, :cond_0

    .line 322
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 327
    .local v17, "accountName":Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/fsck/k9/preferences/SettingsImporter;->isAccountNameUsed(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    const/16 v20, 0x1

    .local v20, "i":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-gt v0, v3, :cond_1

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 332
    invoke-static/range {v17 .. v18}, Lcom/fsck/k9/preferences/SettingsImporter;->isAccountNameUsed(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 339
    .end local v20    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 340
    .local v16, "accountKeyPrefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->incoming:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    if-nez v3, :cond_4

    .line 344
    new-instance v3, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    invoke-direct {v3}, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;-><init>()V

    throw v3

    .line 317
    .end local v14    # "mergeImportedAccount":Z
    .end local v16    # "accountKeyPrefix":Ljava/lang/String;
    .end local v17    # "accountName":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 330
    .restart local v14    # "mergeImportedAccount":Z
    .restart local v17    # "accountName":Ljava/lang/String;
    .restart local v20    # "i":I
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 348
    .end local v20    # "i":I
    .restart local v16    # "accountKeyPrefix":Ljava/lang/String;
    :cond_4
    new-instance v22, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->incoming:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;)V

    .line 349
    .local v22, "incoming":Lcom/fsck/k9/mail/ServerSettings;
    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/mail/store/RemoteStore;->createStoreUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v29

    .line 350
    .local v29, "storeUri":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "storeUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v3, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 355
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/16 v19, 0x1

    .line 357
    .local v19, "createAccountDisabled":Z
    :goto_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->outgoing:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    if-nez v3, :cond_7

    sget-object v3, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/ServerSettings$Type;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->incoming:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    iget-object v4, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 359
    new-instance v3, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    invoke-direct {v3}, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;-><init>()V

    throw v3

    .line 355
    .end local v19    # "createAccountDisabled":Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 362
    .restart local v19    # "createAccountDisabled":Z
    :cond_7
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->outgoing:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    if-eqz v3, :cond_a

    .line 364
    new-instance v26, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->outgoing:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;)V

    .line 365
    .local v26, "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/TransportUris;->createTransportUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v31

    .line 366
    .local v31, "transportUri":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "transportUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v3, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    if-eq v3, v4, :cond_d

    sget-object v3, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-eq v3, v4, :cond_d

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 376
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 377
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_8
    const/16 v27, 0x1

    .line 378
    .local v27, "outgoingPasswordNeeded":Z
    :goto_3
    if-nez v27, :cond_9

    if-eqz v19, :cond_e

    :cond_9
    const/16 v19, 0x1

    .line 382
    .end local v26    # "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    .end local v27    # "outgoingPasswordNeeded":Z
    .end local v31    # "transportUri":Ljava/lang/String;
    :cond_a
    :goto_4
    if-eqz v19, :cond_b

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 387
    :cond_b
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    iget-object v4, v3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    if-nez v14, :cond_f

    const/4 v3, 0x1

    .line 388
    :goto_5
    move/from16 v0, p2

    invoke-static {v0, v4, v3}, Lcom/fsck/k9/preferences/AccountSettings;->validate(ILjava/util/Map;Z)Ljava/util/Map;

    move-result-object v32

    .line 391
    .local v32, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v3, 0x30

    move/from16 v0, p2

    if-eq v0, v3, :cond_c

    .line 392
    move/from16 v0, p2

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/fsck/k9/preferences/AccountSettings;->upgrade(ILjava/util/Map;)Ljava/util/Set;

    .line 396
    :cond_c
    invoke-static/range {v32 .. v32}, Lcom/fsck/k9/preferences/AccountSettings;->convert(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v30

    .line 400
    .local v30, "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_10

    .line 401
    new-instance v34, Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/fsck/k9/preferences/AccountSettings;->getAccountSettings(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 402
    .local v34, "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 408
    :goto_6
    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 409
    .local v28, "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 410
    .local v23, "key":Ljava/lang/String;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 411
    .local v33, "value":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 377
    .end local v23    # "key":Ljava/lang/String;
    .end local v28    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30    # "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32    # "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v33    # "value":Ljava/lang/String;
    .end local v34    # "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    .restart local v31    # "transportUri":Ljava/lang/String;
    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 378
    .restart local v27    # "outgoingPasswordNeeded":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 387
    .end local v26    # "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    .end local v27    # "outgoingPasswordNeeded":Z
    .end local v31    # "transportUri":Ljava/lang/String;
    :cond_f
    const/4 v3, 0x0

    goto :goto_5

    .line 404
    .restart local v30    # "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v32    # "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    move-object/from16 v34, v30

    .restart local v34    # "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_6

    .line 415
    :cond_11
    if-nez v14, :cond_12

    .line 416
    invoke-static {v9}, Lcom/fsck/k9/Account;->generateAccountNumber(Lcom/fsck/k9/Preferences;)I

    move-result v24

    .line 417
    .local v24, "newAccountNumber":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "accountNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v24    # "newAccountNumber":I
    :cond_12
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->identities:Ljava/util/List;

    if-eqz v3, :cond_14

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 422
    invoke-static/range {v3 .. v9}, Lcom/fsck/k9/preferences/SettingsImporter;->importIdentities(Lcom/fsck/k9/preferences/StorageEditor;ILjava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;ZLcom/fsck/k9/Account;Lcom/fsck/k9/Preferences;)V

    .line 429
    :cond_13
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->folders:Ljava/util/List;

    if-eqz v3, :cond_15

    .line 430
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->folders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;

    .local v13, "folder":Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v5

    move-object v15, v9

    .line 431
    invoke-static/range {v10 .. v15}, Lcom/fsck/k9/preferences/SettingsImporter;->importFolder(Lcom/fsck/k9/preferences/StorageEditor;ILjava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;ZLcom/fsck/k9/Preferences;)V

    goto :goto_8

    .line 423
    .end local v13    # "folder":Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
    :cond_14
    if-nez v14, :cond_13

    .line 425
    new-instance v3, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    invoke-direct {v3}, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;-><init>()V

    throw v3

    .line 437
    :cond_15
    new-instance v21, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5, v3}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    .line 438
    .local v21, "imported":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    new-instance v3, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1, v14, v4}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;ZLcom/fsck/k9/preferences/SettingsImporter$1;)V

    return-object v3
.end method

.method private static importFolder(Lcom/fsck/k9/preferences/StorageEditor;ILjava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;ZLcom/fsck/k9/Preferences;)V
    .locals 10
    .param p0, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;
    .param p1, "contentVersion"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "folder"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
    .param p4, "overwrite"    # Z
    .param p5, "prefs"    # Lcom/fsck/k9/Preferences;

    .prologue
    .line 445
    iget-object v7, p3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;->settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    iget-object v8, v7, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    if-nez p4, :cond_1

    const/4 v7, 0x1

    .line 446
    :goto_0
    invoke-static {p1, v8, v7}, Lcom/fsck/k9/preferences/FolderSettings;->validate(ILjava/util/Map;Z)Ljava/util/Map;

    move-result-object v4

    .line 449
    .local v4, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v7, 0x30

    if-eq p1, v7, :cond_0

    .line 450
    invoke-static {p1, v4}, Lcom/fsck/k9/preferences/FolderSettings;->upgrade(ILjava/util/Map;)Ljava/util/Set;

    .line 454
    :cond_0
    invoke-static {v4}, Lcom/fsck/k9/preferences/FolderSettings;->convert(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 458
    .local v3, "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_2

    .line 459
    invoke-virtual {p5}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v7

    iget-object v8, p3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;->name:Ljava/lang/String;

    invoke-static {v7, p2, v8}, Lcom/fsck/k9/preferences/FolderSettings;->getFolderSettings(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 460
    .local v6, "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 466
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "prefix":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 468
    .local v2, "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 470
    .local v5, "value":Ljava/lang/String;
    invoke-static {p0, v0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 445
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 462
    .restart local v3    # "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    move-object v6, v3

    .restart local v6    # "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 472
    .restart local v1    # "prefix":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static importGlobalSettings(Lcom/fsck/k9/preferences/Storage;Lcom/fsck/k9/preferences/StorageEditor;ILcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;)V
    .locals 8
    .param p0, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .param p1, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;
    .param p2, "contentVersion"    # I
    .param p3, "settings"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    .prologue
    .line 286
    iget-object v6, p3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    invoke-static {p2, v6}, Lcom/fsck/k9/preferences/GlobalSettings;->validate(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 289
    .local v4, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v6, 0x30

    if-eq p2, v6, :cond_0

    .line 290
    invoke-static {p2, v4}, Lcom/fsck/k9/preferences/GlobalSettings;->upgrade(ILjava/util/Map;)Ljava/util/Set;

    .line 294
    :cond_0
    invoke-static {v4}, Lcom/fsck/k9/preferences/GlobalSettings;->convert(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 297
    .local v3, "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/fsck/k9/preferences/GlobalSettings;->getGlobalSettings(Lcom/fsck/k9/preferences/Storage;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 298
    .local v1, "mergedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 301
    .local v2, "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 303
    .local v5, "value":Ljava/lang/String;
    invoke-static {p1, v0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static importIdentities(Lcom/fsck/k9/preferences/StorageEditor;ILjava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;ZLcom/fsck/k9/Account;Lcom/fsck/k9/Preferences;)V
    .locals 24
    .param p0, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;
    .param p1, "contentVersion"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "account"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .param p4, "overwrite"    # Z
    .param p5, "existingAccount"    # Lcom/fsck/k9/Account;
    .param p6, "prefs"    # Lcom/fsck/k9/Preferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "accountKeyPrefix":Ljava/lang/String;
    const/4 v13, 0x0

    .line 482
    .local v13, "nextIdentityIndex":I
    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 483
    invoke-virtual/range {p5 .. p5}, Lcom/fsck/k9/Account;->getIdentities()Ljava/util/List;

    move-result-object v4

    .line 484
    .local v4, "existingIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    .line 490
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->identities:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;

    .line 491
    .local v6, "identity":Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    move/from16 v18, v13

    .line 492
    .local v18, "writeIdentityIndex":I
    const/4 v12, 0x0

    .line 493
    .local v12, "mergeSettings":Z
    if-eqz p4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 494
    invoke-static {v6, v4}, Lcom/fsck/k9/preferences/SettingsImporter;->findIdentity(Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;Ljava/util/List;)I

    move-result v8

    .line 495
    .local v8, "identityIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_1

    .line 496
    move/from16 v18, v8

    .line 497
    const/4 v12, 0x1

    .line 500
    .end local v8    # "identityIndex":I
    :cond_1
    if-nez v12, :cond_2

    .line 501
    add-int/lit8 v13, v13, 0x1

    .line 504
    :cond_2
    iget-object v0, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->description:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    const-string v7, "Imported"

    .line 505
    .local v7, "identityDescription":Ljava/lang/String;
    :goto_1
    invoke-static {v7, v4}, Lcom/fsck/k9/preferences/SettingsImporter;->isIdentityDescriptionUsed(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 509
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-gt v5, v0, :cond_3

    .line 510
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->description:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " ("

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ")"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 511
    invoke-static {v7, v4}, Lcom/fsck/k9/preferences/SettingsImporter;->isIdentityDescriptionUsed(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 517
    .end local v5    # "i":I
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "identitySuffix":Ljava/lang/String;
    iget-object v0, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    const-string v9, ""

    .line 521
    .local v9, "identityName":Ljava/lang/String;
    :goto_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->email:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/preferences/IdentitySettings;->isEmailAddressValid(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 525
    new-instance v20, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    invoke-direct/range {v20 .. v20}, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;-><init>()V

    throw v20

    .line 486
    .end local v4    # "existingIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    .end local v6    # "identity":Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    .end local v7    # "identityDescription":Ljava/lang/String;
    .end local v9    # "identityName":Ljava/lang/String;
    .end local v10    # "identitySuffix":Ljava/lang/String;
    .end local v12    # "mergeSettings":Z
    .end local v18    # "writeIdentityIndex":I
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "existingIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    goto/16 :goto_0

    .line 504
    .restart local v6    # "identity":Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    .restart local v12    # "mergeSettings":Z
    .restart local v18    # "writeIdentityIndex":I
    :cond_5
    iget-object v7, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->description:Ljava/lang/String;

    goto/16 :goto_1

    .line 509
    .restart local v5    # "i":I
    .restart local v7    # "identityDescription":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 520
    .end local v5    # "i":I
    .restart local v10    # "identitySuffix":Ljava/lang/String;
    :cond_7
    iget-object v9, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->name:Ljava/lang/String;

    goto :goto_3

    .line 529
    .restart local v9    # "identityName":Ljava/lang/String;
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "email"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->email:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "description"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 537
    iget-object v0, v6, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    move-object/from16 v22, v0

    if-nez v12, :cond_a

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/IdentitySettings;->validate(ILjava/util/Map;Z)Ljava/util/Map;

    move-result-object v16

    .line 541
    .local v16, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v20, 0x30

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 542
    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/fsck/k9/preferences/IdentitySettings;->upgrade(ILjava/util/Map;)Ljava/util/Set;

    .line 546
    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/preferences/IdentitySettings;->convert(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    .line 550
    .local v15, "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_b

    .line 551
    new-instance v19, Ljava/util/HashMap;

    .line 552
    invoke-virtual/range {p6 .. p6}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v20

    .line 551
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/preferences/IdentitySettings;->getIdentitySettings(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 553
    .local v19, "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 559
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 560
    .local v14, "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 561
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 562
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 537
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "value":Ljava/lang/String;
    .end local v19    # "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const/16 v20, 0x0

    goto :goto_4

    .line 555
    .restart local v15    # "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    move-object/from16 v19, v15

    .restart local v19    # "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5

    .line 566
    .end local v6    # "identity":Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    .end local v7    # "identityDescription":Ljava/lang/String;
    .end local v9    # "identityName":Ljava/lang/String;
    .end local v10    # "identitySuffix":Ljava/lang/String;
    .end local v12    # "mergeSettings":Z
    .end local v15    # "stringSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "writeIdentityIndex":I
    .end local v19    # "writeSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    return-void
.end method

.method public static importSettings(Landroid/content/Context;Ljava/io/InputStream;ZLjava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "globalSettings"    # Z
    .param p4, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 170
    .local v10, "globalSettingsImported":Z
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v13, "importedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v9, "erroneousAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/preferences/SettingsImporter;->parseSettings(Ljava/io/InputStream;ZLjava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$Imported;

    move-result-object v12

    .line 175
    .local v12, "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v17

    .line 176
    .local v17, "preferences":Lcom/fsck/k9/Preferences;
    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;
    :try_end_0
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v18

    .line 178
    .local v18, "storage":Lcom/fsck/k9/preferences/Storage;
    if-eqz p2, :cond_0

    .line 180
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v8

    .line 181
    .local v8, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    iget-object v0, v12, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 182
    iget v0, v12, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->contentVersion:I

    move/from16 v19, v0

    iget-object v0, v12, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v8, v1, v2}, Lcom/fsck/k9/preferences/SettingsImporter;->importGlobalSettings(Lcom/fsck/k9/preferences/Storage;Lcom/fsck/k9/preferences/StorageEditor;ILcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;)V

    .line 186
    :goto_0
    invoke-virtual {v8}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 187
    const-string v19, "Committed global settings to the preference storage."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    const/4 v10, 0x1

    .line 197
    .end local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    :cond_0
    :goto_1
    if-eqz p3, :cond_a

    :try_start_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_a

    .line 198
    iget-object v0, v12, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 199
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 200
    .local v5, "accountUuid":Ljava/lang/String;
    iget-object v0, v12, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 201
    iget-object v0, v12, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    :try_end_2
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 203
    .local v4, "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v8

    .line 205
    .restart local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    iget v0, v12, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->contentVersion:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p4

    invoke-static {v0, v8, v1, v4, v2}, Lcom/fsck/k9/preferences/SettingsImporter;->importAccount(Landroid/content/Context;Lcom/fsck/k9/preferences/StorageEditor;ILcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;Z)Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;

    move-result-object v11

    .line 208
    .local v11, "importResult":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    invoke-virtual {v8}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 209
    const-string v20, "Committed settings for account \"%s\" to the settings database."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v11, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-boolean v0, v11, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->overwritten:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 215
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v8

    .line 217
    iget-object v0, v11, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->uuid:Ljava/lang/String;

    .line 218
    .local v15, "newUuid":Ljava/lang/String;
    const-string v20, "accountUuids"

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 219
    .local v16, "oldAccountUuids":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, "newAccountUuids":Ljava/lang/String;
    :goto_3
    const-string v20, "accountUuids"

    move-object/from16 v0, v20

    invoke-static {v8, v0, v14}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v8}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    move-result v20

    if-nez v20, :cond_4

    .line 225
    new-instance v20, Lcom/fsck/k9/preferences/SettingsImportExportException;

    const-string v21, "Failed to set account UUID list"

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_3
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_3 .. :try_end_3} :catch_1

    .line 239
    .end local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .end local v11    # "importResult":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    .end local v14    # "newAccountUuids":Ljava/lang/String;
    .end local v15    # "newUuid":Ljava/lang/String;
    .end local v16    # "oldAccountUuids":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 240
    .local v7, "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    :try_start_4
    const-string v20, "Encountered invalid setting while importing account \"%s\""

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    new-instance v20, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    iget-object v0, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 275
    .end local v4    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .end local v5    # "accountUuid":Ljava/lang/String;
    .end local v7    # "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    .end local v9    # "erroneousAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    .end local v12    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .end local v13    # "importedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;>;"
    .end local v17    # "preferences":Lcom/fsck/k9/Preferences;
    .end local v18    # "storage":Lcom/fsck/k9/preferences/Storage;
    :catch_1
    move-exception v7

    .line 276
    .local v7, "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    throw v7

    .line 184
    .end local v7    # "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    .restart local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .restart local v9    # "erroneousAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    .restart local v12    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .restart local v13    # "importedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;>;"
    .restart local v17    # "preferences":Lcom/fsck/k9/Preferences;
    .restart local v18    # "storage":Lcom/fsck/k9/preferences/Storage;
    :cond_1
    :try_start_5
    const-string v19, "Was asked to import global settings but none found."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 192
    .end local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    :catch_2
    move-exception v7

    .line 193
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v19, "Exception while importing global settings"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 277
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "erroneousAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    .end local v12    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .end local v13    # "importedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;>;"
    .end local v17    # "preferences":Lcom/fsck/k9/Preferences;
    .end local v18    # "storage":Lcom/fsck/k9/preferences/Storage;
    :catch_3
    move-exception v7

    .line 278
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v19, Lcom/fsck/k9/preferences/SettingsImportExportException;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 190
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .restart local v9    # "erroneousAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;>;"
    .restart local v12    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .restart local v13    # "importedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;>;"
    .restart local v17    # "preferences":Lcom/fsck/k9/Preferences;
    .restart local v18    # "storage":Lcom/fsck/k9/preferences/Storage;
    :cond_2
    :try_start_7
    const-string v19, "Failed to commit global settings to the preference storage"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .restart local v4    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .restart local v5    # "accountUuid":Ljava/lang/String;
    .restart local v11    # "importResult":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    .restart local v15    # "newUuid":Ljava/lang/String;
    .restart local v16    # "oldAccountUuids":Ljava/lang/String;
    :cond_3
    move-object v14, v15

    .line 219
    goto/16 :goto_3

    .line 230
    .end local v15    # "newUuid":Ljava/lang/String;
    .end local v16    # "oldAccountUuids":Ljava/lang/String;
    :cond_4
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 232
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 244
    .end local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .end local v11    # "importResult":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    :catch_4
    move-exception v7

    .line 245
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v20, "Exception while importing account \"%s\""

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v20, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    iget-object v0, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 234
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .restart local v11    # "importResult":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    :cond_5
    :try_start_a
    const-string v20, "Error while committing settings for account \"%s\" to the settings database."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v11, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, v11, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 249
    .end local v4    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .end local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .end local v11    # "importResult":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    :cond_6
    :try_start_b
    const-string v20, "Was asked to import account with UUID %s. But this account wasn\'t found."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 254
    .end local v5    # "accountUuid":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v8

    .line 256
    .restart local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    const-string v19, "defaultAccountUuid"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "defaultAccountUuid":Ljava/lang/String;
    if-nez v6, :cond_8

    .line 258
    const-string v20, "defaultAccountUuid"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1}, Lcom/fsck/k9/preferences/SettingsImporter;->putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_8
    invoke-virtual {v8}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    move-result v19

    if-nez v19, :cond_a

    .line 262
    new-instance v19, Lcom/fsck/k9/preferences/SettingsImportExportException;

    const-string v20, "Failed to set default account"

    invoke-direct/range {v19 .. v20}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 265
    .end local v6    # "defaultAccountUuid":Ljava/lang/String;
    .end local v8    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    :cond_9
    const-string v19, "Was asked to import at least one account but none found."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 270
    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/K9;->loadPrefs(Lcom/fsck/k9/Preferences;)V

    .line 271
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    .line 273
    new-instance v19, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v13, v9, v1}, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;-><init>(ZLjava/util/List;Ljava/util/List;Lcom/fsck/k9/preferences/SettingsImporter$1;)V
    :try_end_b
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    return-object v19
.end method

.method private static isAccountNameUsed(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 570
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const/4 v1, 0x1

    .line 578
    .end local v0    # "account":Lcom/fsck/k9/Account;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIdentityDescriptionUsed(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    .line 583
    .local v0, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    const/4 v1, 0x1

    .line 587
    .end local v0    # "identity":Lcom/fsck/k9/Identity;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseAccount(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .locals 10
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "overview"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 832
    const-string v5, "uuid"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, "uuid":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    new-instance v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;

    invoke-direct {v0}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;-><init>()V

    .line 843
    .local v0, "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    iput-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    .line 845
    if-nez p2, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 846
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 847
    .local v3, "eventType":I
    :goto_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    const-string v5, "account"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 848
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 849
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "element":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 851
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    .line 882
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 836
    .end local v0    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .end local v3    # "eventType":I
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "account"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 838
    const-string v5, "Skipping account with invalid UUID %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-object v0

    .line 852
    .restart local v0    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "eventType":I
    :cond_4
    const-string v5, "incoming-server"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 853
    if-eqz p2, :cond_5

    .line 854
    const-string v5, "incoming-server"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 856
    :cond_5
    const-string v5, "incoming-server"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->parseServerSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    move-result-object v5

    iput-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->incoming:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    goto :goto_1

    .line 858
    :cond_6
    const-string v5, "outgoing-server"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 859
    if-eqz p2, :cond_7

    .line 860
    const-string v5, "outgoing-server"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 862
    :cond_7
    const-string v5, "outgoing-server"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->parseServerSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    move-result-object v5

    iput-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->outgoing:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    goto :goto_1

    .line 864
    :cond_8
    const-string v5, "settings"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 865
    if-eqz p2, :cond_9

    .line 866
    const-string v5, "settings"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 868
    :cond_9
    const-string v5, "settings"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-result-object v5

    iput-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    goto :goto_1

    .line 870
    :cond_a
    const-string v5, "identities"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 871
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->parseIdentities(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->identities:Ljava/util/List;

    goto :goto_1

    .line 872
    :cond_b
    const-string v5, "folders"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 873
    if-eqz p2, :cond_c

    .line 874
    const-string v5, "folders"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 876
    :cond_c
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->parseFolders(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->folders:Ljava/util/List;

    goto/16 :goto_1

    .line 879
    :cond_d
    const-string v5, "Unexpected start tag: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 885
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "eventType":I
    :cond_e
    const-string v5, "account"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 886
    const-string v5, "Skipping account with UUID %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    :cond_f
    iget-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 891
    iput-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->name:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private static parseAccounts(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/Map;
    .locals 9
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "overview"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 799
    const/4 v1, 0x0

    .line 801
    .local v1, "accounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 802
    .local v3, "eventType":I
    :goto_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v4, "accounts"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 803
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 804
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, "element":Ljava/lang/String;
    const-string v4, "account"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 806
    if-nez v1, :cond_1

    .line 807
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "accounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 810
    .restart local v1    # "accounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;>;"
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/preferences/SettingsImporter;->parseAccount(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;

    move-result-object v0

    .line 812
    .local v0, "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    if-nez v0, :cond_3

    .line 823
    .end local v0    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 814
    .restart local v0    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    .restart local v2    # "element":Ljava/lang/String;
    :cond_3
    iget-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 815
    iget-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 817
    :cond_4
    const-string v4, "Duplicate account entries with UUID %s. Ignoring!"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;->uuid:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 820
    .end local v0    # "account":Lcom/fsck/k9/preferences/SettingsImporter$ImportedAccount;
    :cond_5
    const-string v4, "Unexpected start tag: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 826
    .end local v2    # "element":Ljava/lang/String;
    :cond_6
    return-object v1
.end method

.method private static parseFolder(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
    .locals 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1010
    new-instance v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;

    invoke-direct {v0, v3}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    .line 1012
    .local v0, "folder":Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
    const-string v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "name":Ljava/lang/String;
    iput-object v1, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;->name:Ljava/lang/String;

    .line 1015
    const-string v2, "folder"

    invoke-static {p0, v2}, Lcom/fsck/k9/preferences/SettingsImporter;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-result-object v2

    iput-object v2, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;->settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    .line 1017
    return-object v0
.end method

.method private static parseFolders(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    const/4 v3, 0x0

    .line 988
    .local v3, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 989
    .local v1, "eventType":I
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const-string v4, "folders"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 990
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 991
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "element":Ljava/lang/String;
    const-string v4, "folder"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 993
    if-nez v3, :cond_1

    .line 994
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .restart local v3    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;>;"
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->parseFolder(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;

    move-result-object v2

    .line 998
    .local v2, "folder":Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "folder":Lcom/fsck/k9/preferences/SettingsImporter$ImportedFolder;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1000
    .restart local v0    # "element":Ljava/lang/String;
    :cond_3
    const-string v4, "Unexpected start tag: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1006
    .end local v0    # "element":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private static parseIdentities(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    const/4 v2, 0x0

    .line 938
    .local v2, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 939
    .local v1, "eventType":I
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const-string v4, "identities"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 940
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 941
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "element":Ljava/lang/String;
    const-string v4, "identity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 943
    if-nez v2, :cond_1

    .line 944
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .restart local v2    # "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;>;"
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->parseIdentity(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;

    move-result-object v3

    .line 948
    .local v3, "identity":Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v0    # "element":Ljava/lang/String;
    .end local v3    # "identity":Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 950
    .restart local v0    # "element":Ljava/lang/String;
    :cond_3
    const-string v4, "Unexpected start tag: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 956
    .end local v0    # "element":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method private static parseIdentity(Lorg/xmlpull/v1/XmlPullParser;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;

    invoke-direct {v2}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;-><init>()V

    .line 962
    .local v2, "identity":Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 963
    .local v1, "eventType":I
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const-string v3, "identity"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 965
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 966
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "element":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 968
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->name:Ljava/lang/String;

    .line 979
    .end local v0    # "element":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 969
    .restart local v0    # "element":Ljava/lang/String;
    :cond_2
    const-string v3, "email"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 970
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->email:Ljava/lang/String;

    goto :goto_1

    .line 971
    :cond_3
    const-string v3, "description"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 972
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->description:Ljava/lang/String;

    goto :goto_1

    .line 973
    :cond_4
    const-string v3, "settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 974
    const-string v3, "settings"

    invoke-static {p0, v3}, Lcom/fsck/k9/preferences/SettingsImporter;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-result-object v3

    iput-object v3, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedIdentity;->settings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    goto :goto_1

    .line 976
    :cond_5
    const-string v3, "Unexpected start tag: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 982
    .end local v0    # "element":Ljava/lang/String;
    :cond_6
    return-object v2
.end method

.method private static parseRoot(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .locals 10
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "globalSettings"    # Z
    .param p3, "overview"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fsck/k9/preferences/SettingsImporter$Imported;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .local p2, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 680
    new-instance v4, Lcom/fsck/k9/preferences/SettingsImporter$Imported;

    invoke-direct {v4}, Lcom/fsck/k9/preferences/SettingsImporter$Imported;-><init>()V

    .line 682
    .local v4, "result":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    const-string v5, "format"

    invoke-interface {p0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "fileFormatVersionString":Ljava/lang/String;
    invoke-static {v3}, Lcom/fsck/k9/preferences/SettingsImporter;->validateFileFormatVersion(Ljava/lang/String;)I

    .line 685
    const-string v5, "version"

    invoke-interface {p0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "contentVersionString":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/preferences/SettingsImporter;->validateContentVersion(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->contentVersion:I

    .line 688
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 689
    .local v2, "eventType":I
    :goto_0
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    const-string v5, "k9settings"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 690
    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 691
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "element":Ljava/lang/String;
    const-string v5, "global"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 693
    if-nez p3, :cond_1

    if-eqz p1, :cond_5

    .line 694
    :cond_1
    iget-object v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    if-nez v5, :cond_4

    .line 695
    if-eqz p3, :cond_3

    .line 696
    new-instance v5, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    invoke-direct {v5, v9}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    iput-object v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    .line 697
    const-string v5, "global"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 719
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 699
    .restart local v1    # "element":Ljava/lang/String;
    :cond_3
    const-string v5, "global"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-result-object v5

    iput-object v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    goto :goto_1

    .line 702
    :cond_4
    const-string v5, "global"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 703
    const-string v5, "More than one global settings element. Only using the first one!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 706
    :cond_5
    const-string v5, "global"

    invoke-static {p0, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 707
    const-string v5, "Skipping global settings"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 709
    :cond_6
    const-string v5, "accounts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 710
    iget-object v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    if-nez v5, :cond_7

    .line 711
    invoke-static {p0, p2, p3}, Lcom/fsck/k9/preferences/SettingsImporter;->parseAccounts(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    goto :goto_1

    .line 713
    :cond_7
    const-string v5, "More than one accounts element. Only using the first one!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 716
    :cond_8
    const-string v5, "Unexpected start tag: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 722
    .end local v1    # "element":Ljava/lang/String;
    :cond_9
    return-object v4
.end method

.method private static parseServerSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;
    .locals 8
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    invoke-direct {v2}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;-><init>()V

    .line 901
    .local v2, "server":Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;
    const/4 v4, 0x0

    const-string v5, "type"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->type:Ljava/lang/String;

    .line 903
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 904
    .local v1, "eventType":I
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 905
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 906
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "element":Ljava/lang/String;
    const-string v4, "host"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 908
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->host:Ljava/lang/String;

    .line 928
    .end local v0    # "element":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 909
    .restart local v0    # "element":Ljava/lang/String;
    :cond_2
    const-string v4, "port"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 910
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->port:Ljava/lang/String;

    goto :goto_1

    .line 911
    :cond_3
    const-string v4, "connection-security"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 912
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->connectionSecurity:Ljava/lang/String;

    goto :goto_1

    .line 913
    :cond_4
    const-string v4, "authentication-type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 914
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 915
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    goto :goto_1

    .line 916
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    const-string v4, "username"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 917
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->username:Ljava/lang/String;

    goto :goto_1

    .line 918
    :cond_6
    const-string v4, "client-cert-alias"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 919
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->clientCertificateAlias:Ljava/lang/String;

    goto :goto_1

    .line 920
    :cond_7
    const-string v4, "password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 921
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->password:Ljava/lang/String;

    goto :goto_1

    .line 922
    :cond_8
    const-string v4, "extra"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 923
    const-string v4, "extra"

    invoke-static {p0, v4}, Lcom/fsck/k9/preferences/SettingsImporter;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    move-result-object v4

    iput-object v4, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->extras:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    goto :goto_1

    .line 925
    :cond_9
    const-string v4, "Unexpected start tag: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 931
    .end local v0    # "element":Ljava/lang/String;
    :cond_a
    return-object v2
.end method

.method static parseSettings(Ljava/io/InputStream;ZLjava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .locals 11
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "globalSettings"    # Z
    .param p3, "overview"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fsck/k9/preferences/SettingsImporter$Imported;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .local p2, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 627
    if-nez p3, :cond_0

    if-nez p2, :cond_0

    .line 628
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Argument \'accountUuids\' must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 632
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 634
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 636
    .local v5, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 637
    .local v4, "reader":Ljava/io/InputStreamReader;
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 641
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v10, :cond_3

    .line 642
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 643
    const-string v6, "k9settings"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 644
    invoke-static {v5, p1, p2, p3}, Lcom/fsck/k9/preferences/SettingsImporter;->parseRoot(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$Imported;

    move-result-object v3

    .line 649
    :cond_1
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 646
    :cond_2
    const-string v6, "Unexpected start tag: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 657
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/fsck/k9/preferences/SettingsImportExportException;

    invoke-direct {v6, v0}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 652
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "imported":Lcom/fsck/k9/preferences/SettingsImporter$Imported;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz p3, :cond_5

    :try_start_1
    iget-object v6, v3, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->globalSettings:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    if-nez v6, :cond_5

    iget-object v6, v3, Lcom/fsck/k9/preferences/SettingsImporter$Imported;->accounts:Ljava/util/Map;

    if-nez v6, :cond_5

    .line 653
    :cond_4
    new-instance v6, Lcom/fsck/k9/preferences/SettingsImportExportException;

    const-string v7, "Invalid import data"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    :cond_5
    return-object v3
.end method

.method private static parseSettings(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;
    .locals 12
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 766
    const/4 v3, 0x0

    .line 768
    .local v3, "result":Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 769
    .local v1, "eventType":I
    :goto_0
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 771
    :cond_0
    if-ne v1, v10, :cond_2

    .line 772
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "element":Ljava/lang/String;
    const-string v5, "value"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 774
    const-string v5, "key"

    invoke-interface {p0, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/preferences/SettingsImporter;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, "value":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 778
    new-instance v3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    .end local v3    # "result":Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;
    invoke-direct {v3, v11}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$1;)V

    .line 781
    .restart local v3    # "result":Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;
    :cond_1
    iget-object v5, v3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 782
    const-string v5, "Already read key \"%s\". Ignoring value \"%s\""

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 784
    .restart local v0    # "element":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    iget-object v5, v3, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 787
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    const-string v5, "Unexpected start tag: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 793
    .end local v0    # "element":Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method private static putString(Lcom/fsck/k9/preferences/StorageEditor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    move-object v0, p2

    .line 615
    .local v0, "outputValue":Ljava/lang/String;
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    if-nez v1, :cond_1

    const-string v1, ".transportUri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".storeUri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    :cond_0
    const-string v0, "*sensitive*"

    .line 618
    :cond_1
    const-string v1, "Setting %s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    .end local v0    # "outputValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 621
    return-void
.end method

.method private static skipToEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 664
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 667
    :cond_1
    return-void
.end method

.method private static validateContentVersion(Ljava/lang/String;)I
    .locals 5
    .param p0, "versionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .line 745
    if-nez p0, :cond_0

    .line 746
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImportExportException;

    const-string v3, "Missing content version"

    invoke-direct {v2, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 756
    .local v1, "version":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 757
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImportExportException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported content version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    .end local v1    # "version":I
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImportExportException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid content version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 760
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "version":I
    :cond_1
    return v1
.end method

.method private static validateFileFormatVersion(Ljava/lang/String;)I
    .locals 5
    .param p0, "versionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/SettingsImportExportException;
        }
    .end annotation

    .prologue
    .line 726
    if-nez p0, :cond_0

    .line 727
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImportExportException;

    const-string v3, "Missing file format version"

    invoke-direct {v2, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 737
    .local v1, "version":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 738
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImportExportException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported file format version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    .end local v1    # "version":I
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/fsck/k9/preferences/SettingsImportExportException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file format version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/preferences/SettingsImportExportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 741
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "version":I
    :cond_1
    return v1
.end method
