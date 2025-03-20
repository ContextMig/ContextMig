.class public Lcom/batch/android/h/a/a;
.super Lcom/batch/android/h/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/h/a/a$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/Long;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/batch/android/h/e;->e:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0, p2}, Lcom/batch/android/h/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;Lcom/batch/android/json/JSONObject;)V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batch/android/h/a/a;->a:J

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/h/a/a;->b:Ljava/lang/Long;

    .line 29
    const-string v0, "action"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "action"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "action"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/h/a/a;->c:Ljava/lang/String;

    .line 34
    :cond_0
    const-string v0, "ver"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ver"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    const-string v0, "ver"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/h/a/a;->a:J

    .line 39
    :cond_1
    const-string v0, "t"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "t"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    const-string v0, "t"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/h/a/a;->a:J

    .line 43
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/h/a/a$a;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/batch/android/h/a/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/batch/android/h/a/a$a;->e:Lcom/batch/android/h/a/a$a;

    .line 69
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v0, "OK"

    iget-object v1, p0, Lcom/batch/android/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/batch/android/h/a/a$a;->a:Lcom/batch/android/h/a/a$a;

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "BUMP"

    iget-object v1, p0, Lcom/batch/android/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/batch/android/h/a/a$a;->b:Lcom/batch/android/h/a/a$a;

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "RECHECK"

    iget-object v1, p0, Lcom/batch/android/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    sget-object v0, Lcom/batch/android/h/a/a$a;->c:Lcom/batch/android/h/a/a$a;

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "RESEND"

    iget-object v1, p0, Lcom/batch/android/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    sget-object v0, Lcom/batch/android/h/a/a$a;->d:Lcom/batch/android/h/a/a$a;

    goto :goto_0

    .line 69
    :cond_4
    sget-object v0, Lcom/batch/android/h/a/a$a;->e:Lcom/batch/android/h/a/a$a;

    goto :goto_0
.end method
