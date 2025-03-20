.class final Lcom/dropbox/sync/android/CoreConfig$Hosts;
.super Ljava/lang/Object;
.source "CoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hosts"
.end annotation


# static fields
.field private static final DBDEV_HOSTS:Lcom/dropbox/sync/android/CoreConfig$Hosts;

.field public static final DEBUG_DBDEV_HOSTS:Z

.field public static final DEFAULT:Lcom/dropbox/sync/android/CoreConfig$Hosts;

.field private static final DROPBOX_HOSTS:Lcom/dropbox/sync/android/CoreConfig$Hosts;

.field private static final STAGE_HOSTS:Lcom/dropbox/sync/android/CoreConfig$Hosts;


# instance fields
.field public final api:Ljava/lang/String;

.field public final apiDebug:Ljava/lang/String;

.field public final content:Ljava/lang/String;

.field public final notify:Ljava/lang/String;

.field public final web:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 107
    new-instance v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;

    const-string v1, "api.dropbox.com"

    const-string v2, "api-d.dropbox.com"

    const-string v3, "api-content.dropbox.com"

    const-string v4, "www.dropbox.com"

    const-string v5, "api-notify.dropbox.com"

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/CoreConfig$Hosts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->DROPBOX_HOSTS:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    .line 109
    new-instance v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;

    const-string v1, "stage.dropbox.com"

    const-string v2, "api-d.dropbox.com"

    const-string v3, "api-content.dropbox.com"

    const-string v4, "stage.dropbox.com"

    const-string v5, "stage.dropbox.com"

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/CoreConfig$Hosts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->STAGE_HOSTS:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    .line 110
    new-instance v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;

    const-string v1, "api-dbdev.dev.corp.dropbox.com"

    const-string v2, "api-dbdev.dev.corp.dropbox.com"

    const-string v3, "api-content-dbdev.dev.corp.dropbox.com"

    const-string v4, "meta-dbdev.dev.corp.dropbox.com"

    const-string v5, "api-dbdev.dev.corp.dropbox.com"

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/CoreConfig$Hosts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->DBDEV_HOSTS:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    .line 116
    sget-object v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->DROPBOX_HOSTS:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    sput-object v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->DEFAULT:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "apiDebug"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "web"    # Ljava/lang/String;
    .param p5, "notify"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'api\' shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'apiDebug\' shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'content\' shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'web\' shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'notify\' shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_4
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->api:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->apiDebug:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->content:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->web:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->notify:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    if-ne p0, p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    instance-of v3, p1, Lcom/dropbox/sync/android/CoreConfig$Hosts;

    if-nez v3, :cond_2

    move v1, v2

    .line 181
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 183
    check-cast v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;

    .line 184
    .local v0, "other":Lcom/dropbox/sync/android/CoreConfig$Hosts;
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->api:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->api:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->web:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->web:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->notify:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->notify:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->apiDebug:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->apiDebug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 193
    const/16 v0, 0x11

    .line 194
    .local v0, "result":I
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->api:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->web:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->notify:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->apiDebug:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 199
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->api:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", web="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->web:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->notify:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreConfig$Hosts;->apiDebug:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
