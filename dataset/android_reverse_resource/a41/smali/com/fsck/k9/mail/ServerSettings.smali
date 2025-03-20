.class public Lcom/fsck/k9/mail/ServerSettings;
.super Ljava/lang/Object;
.source "ServerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/ServerSettings$Type;
    }
.end annotation


# instance fields
.field public final authenticationType:Lcom/fsck/k9/mail/AuthType;

.field public final clientCertificateAlias:Ljava/lang/String;

.field public final connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field private final extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final host:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final type:Lcom/fsck/k9/mail/ServerSettings$Type;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ServerSettings$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/ServerSettings$Type;

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 189
    iput-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 191
    sget-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    iput-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 192
    iput-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 193
    iput-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/ServerSettings$Type;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "connectionSecurity"    # Lcom/fsck/k9/mail/ConnectionSecurity;
    .param p5, "authenticationType"    # Lcom/fsck/k9/mail/AuthType;
    .param p6, "username"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "clientCertificateAlias"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 132
    iput-object p2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 134
    iput-object p4, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 135
    iput-object p5, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 136
    iput-object p6, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 137
    iput-object p7, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 138
    iput-object p8, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/ServerSettings$Type;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "connectionSecurity"    # Lcom/fsck/k9/mail/ConnectionSecurity;
    .param p5, "authenticationType"    # Lcom/fsck/k9/mail/AuthType;
    .param p6, "username"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "clientCertificateAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/ServerSettings$Type;",
            "Ljava/lang/String;",
            "I",
            "Lcom/fsck/k9/mail/ConnectionSecurity;",
            "Lcom/fsck/k9/mail/AuthType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p9, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 168
    iput-object p2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 169
    iput p3, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 170
    iput-object p4, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 171
    iput-object p5, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 172
    iput-object p6, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 173
    iput-object p7, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 174
    iput-object p8, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 175
    if-eqz p9, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 176
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 177
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 226
    instance-of v2, p1, Lcom/fsck/k9/mail/ServerSettings;

    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 229
    check-cast v0, Lcom/fsck/k9/mail/ServerSettings;

    .line 230
    .local v0, "that":Lcom/fsck/k9/mail/ServerSettings;
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    iget v3, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 234
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 235
    :goto_2
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 236
    :goto_3
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 238
    :goto_4
    const/4 v1, 0x1

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    iget-object v3, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4
.end method

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
    .line 205
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public newClientCertificateAlias(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 9
    .param p1, "newAlias"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings;

    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iget v3, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    iget-object v4, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    sget-object v5, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    iget-object v6, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    iget-object v7, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newPassword(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 9
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings;

    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v2, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iget v3, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    iget-object v4, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iget-object v5, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iget-object v6, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    iget-object v8, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 210
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    return-void
.end method
