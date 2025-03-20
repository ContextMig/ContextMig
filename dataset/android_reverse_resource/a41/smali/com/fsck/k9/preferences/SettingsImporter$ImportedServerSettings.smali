.class Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;
.super Lcom/fsck/k9/mail/ServerSettings;
.source "SettingsImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/SettingsImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportedServerSettings"
.end annotation


# instance fields
.field private final importedServer:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;)V
    .locals 9
    .param p1, "server"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    .prologue
    .line 1032
    iget-object v0, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/fsck/k9/mail/ServerSettings$Type;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings$Type;

    move-result-object v1

    iget-object v2, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->host:Ljava/lang/String;

    iget-object v0, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->port:Ljava/lang/String;

    invoke-static {v0}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;->convertPort(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->connectionSecurity:Ljava/lang/String;

    .line 1033
    invoke-static {v0}, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;->convertConnectionSecurity(Ljava/lang/String;)Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v4

    iget-object v5, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iget-object v6, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->username:Ljava/lang/String;

    iget-object v7, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->password:Ljava/lang/String;

    iget-object v8, p1, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->clientCertificateAlias:Ljava/lang/String;

    move-object v0, p0

    .line 1032
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iput-object p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;->importedServer:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    .line 1037
    return-void
.end method

.method private static convertConnectionSecurity(Ljava/lang/String;)Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 2
    .param p0, "connectionSecurity"    # Ljava/lang/String;

    .prologue
    .line 1060
    :try_start_0
    const-string v1, "SSL_TLS_OPTIONAL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    sget-object v1, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 1067
    :goto_0
    return-object v1

    .line 1062
    :cond_0
    const-string v1, "STARTTLS_OPTIONAL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    sget-object v1, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    goto :goto_0

    .line 1065
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/mail/ConnectionSecurity;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/ConnectionSecurity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    goto :goto_0
.end method

.method private static convertPort(Ljava/lang/String;)I
    .locals 2
    .param p0, "port"    # Ljava/lang/String;

    .prologue
    .line 1047
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1049
    :goto_0
    return v1

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;->importedServer:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->extras:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServerSettings;->importedServer:Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedServer;->extras:Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;

    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter$ImportedSettings;->settings:Ljava/util/Map;

    .line 1042
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1041
    :goto_0
    return-object v0

    .line 1042
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
