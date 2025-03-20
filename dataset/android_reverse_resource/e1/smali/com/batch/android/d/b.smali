.class public Lcom/batch/android/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/d/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Date;

.field private final d:Ljava/util/TimeZone;

.field private final e:J

.field private final f:Ljava/util/Date;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/batch/android/d/b$a;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The event name cannot be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iput-object p4, p0, Lcom/batch/android/d/b;->b:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/d/b;->a:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/batch/android/d/b;->c:Ljava/util/Date;

    .line 92
    invoke-static {}, Lcom/batch/android/c/y;->c()Lcom/batch/android/c/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/y;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/batch/android/c/y;->c()Lcom/batch/android/c/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/y;->a()Ljava/util/Date;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/batch/android/d/b;->f:Ljava/util/Date;

    .line 94
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/d/b;->d:Ljava/util/TimeZone;

    .line 96
    if-eqz p1, :cond_5

    .line 98
    invoke-static {p1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v2, "ws.server.timestamp"

    invoke-virtual {v0, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_4

    .line 101
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/batch/android/d/b;->e:J

    .line 113
    :goto_1
    sget-object v0, Lcom/batch/android/d/b$a;->a:Lcom/batch/android/d/b$a;

    iput-object v0, p0, Lcom/batch/android/d/b;->h:Lcom/batch/android/d/b$a;

    .line 115
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    :cond_2
    iput-object v1, p0, Lcom/batch/android/d/b;->g:Ljava/lang/String;

    .line 124
    :goto_2
    invoke-static {}, Lcom/batch/android/Batch;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/d/b;->i:Ljava/lang/String;

    .line 125
    return-void

    :cond_3
    move-object v0, v1

    .line 92
    goto :goto_0

    .line 105
    :cond_4
    iput-wide v4, p0, Lcom/batch/android/d/b;->e:J

    goto :goto_1

    .line 110
    :cond_5
    iput-wide v4, p0, Lcom/batch/android/d/b;->e:J

    goto :goto_1

    .line 121
    :cond_6
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, p5}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/d/b;->g:Ljava/lang/String;

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;Ljava/lang/String;Lcom/batch/android/d/b$a;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/batch/android/d/b;->a:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/batch/android/d/b;->b:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/batch/android/d/b;->c:Ljava/util/Date;

    .line 145
    iput-object p4, p0, Lcom/batch/android/d/b;->d:Ljava/util/TimeZone;

    .line 146
    iput-object p5, p0, Lcom/batch/android/d/b;->g:Ljava/lang/String;

    .line 147
    iput-object p6, p0, Lcom/batch/android/d/b;->h:Lcom/batch/android/d/b$a;

    .line 148
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/d/b;->e:J

    .line 149
    iput-object p8, p0, Lcom/batch/android/d/b;->f:Ljava/util/Date;

    .line 150
    iput-object p9, p0, Lcom/batch/android/d/b;->i:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/batch/android/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/batch/android/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/batch/android/d/b;->c:Ljava/util/Date;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/batch/android/d/b;->f:Ljava/util/Date;

    return-object v0
.end method

.method public e()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/batch/android/d/b;->d:Ljava/util/TimeZone;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/batch/android/d/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/batch/android/d/b$a;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/batch/android/d/b;->h:Lcom/batch/android/d/b$a;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/batch/android/d/b;->e:J

    return-wide v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/batch/android/d/b;->h:Lcom/batch/android/d/b$a;

    sget-object v1, Lcom/batch/android/d/b$a;->d:Lcom/batch/android/d/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/batch/android/d/b;->i:Ljava/lang/String;

    return-object v0
.end method
