.class public Lcom/rubenroy/minimaltodo/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:Ljava/util/Date;

.field private e:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "Clean my room"

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/rubenroy/minimaltodo/x;-><init>(Ljava/lang/String;ZLjava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/Date;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/x;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/rubenroy/minimaltodo/x;->b:Z

    iput-object p3, p0, Lcom/rubenroy/minimaltodo/x;->d:Ljava/util/Date;

    const v0, 0x19999d

    iput v0, p0, Lcom/rubenroy/minimaltodo/x;->c:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/x;->e:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "todotext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/x;->a:Ljava/lang/String;

    const-string v0, "todoreminder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rubenroy/minimaltodo/x;->b:Z

    const-string v0, "todocolor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rubenroy/minimaltodo/x;->c:I

    const-string v0, "todoidentifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/x;->e:Ljava/util/UUID;

    const-string v0, "tododate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    const-string v1, "tododate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/x;->d:Ljava/util/Date;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "todotext"

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "todoreminder"

    iget-boolean v2, p0, Lcom/rubenroy/minimaltodo/x;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/x;->d:Ljava/util/Date;

    if-eqz v1, :cond_0

    const-string v1, "tododate"

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/x;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "todocolor"

    iget v2, p0, Lcom/rubenroy/minimaltodo/x;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "todoidentifier"

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/x;->e:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/rubenroy/minimaltodo/x;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/x;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/x;->d:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubenroy/minimaltodo/x;->b:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/x;->b:Z

    return v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/x;->d:Ljava/util/Date;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/rubenroy/minimaltodo/x;->c:I

    return v0
.end method

.method public f()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/x;->e:Ljava/util/UUID;

    return-object v0
.end method
