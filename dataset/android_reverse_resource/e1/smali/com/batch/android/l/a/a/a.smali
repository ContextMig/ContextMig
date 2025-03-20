.class public Lcom/batch/android/l/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l/a/a;


# static fields
.field private static final a:J = 0x3a98L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/FailReason;)V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/f/g;->b(J)V

    .line 81
    return-void
.end method

.method public a(Lcom/batch/android/h/a/a;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3a98

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 20
    const/4 v0, 0x0

    .line 22
    sget-object v2, Lcom/batch/android/l/a/a/a$1;->a:[I

    invoke-virtual {p1}, Lcom/batch/android/h/a/a;->a()Lcom/batch/android/h/a/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/h/a/a$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 73
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/batch/android/f/g;->b(J)V

    .line 75
    :cond_1
    return-void

    :pswitch_0
    move v0, v1

    .line 27
    goto :goto_0

    .line 30
    :pswitch_1
    iget-object v0, p1, Lcom/batch/android/h/a/a;->b:Ljava/lang/Long;

    .line 31
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 33
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 36
    :cond_3
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/batch/android/f/g;->a(J)V

    move v0, v1

    .line 38
    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v0, p1, Lcom/batch/android/h/a/a;->b:Ljava/lang/Long;

    .line 43
    if-nez v0, :cond_4

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 48
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 53
    :cond_5
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/batch/android/f/g;->b(J)V

    move v0, v1

    .line 55
    goto :goto_0

    .line 58
    :pswitch_3
    iget-wide v2, p1, Lcom/batch/android/h/a/a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 64
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    iget-wide v2, p1, Lcom/batch/android/h/a/a;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/f/g;->c(J)V

    move v0, v1

    .line 66
    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
