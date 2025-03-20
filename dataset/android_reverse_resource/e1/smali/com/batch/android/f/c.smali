.class public Lcom/batch/android/f/c;
.super Lcom/batch/android/f/b;
.source "SourceFile"


# static fields
.field private static b:Lcom/batch/android/f/c;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/batch/android/f/c;

    invoke-direct {v0}, Lcom/batch/android/f/c;-><init>()V

    sput-object v0, Lcom/batch/android/f/c;->b:Lcom/batch/android/f/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/batch/android/f/b;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/f/c;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/batch/android/f/c;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/batch/android/f/c;->b:Lcom/batch/android/f/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/batch/android/f/b;)V
    .locals 2

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "module==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/batch/android/f/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "master"

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/batch/android/f/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/f/b;

    .line 53
    invoke-virtual {v0}, Lcom/batch/android/f/b;->d()V

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/batch/android/f/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/f/b;

    .line 62
    invoke-virtual {v0}, Lcom/batch/android/f/b;->e()V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/batch/android/f/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/f/b;

    .line 71
    invoke-virtual {v0}, Lcom/batch/android/f/b;->f()V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/batch/android/f/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/f/b;

    .line 80
    invoke-virtual {v0}, Lcom/batch/android/f/b;->g()V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/batch/android/f/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/f/b;

    .line 89
    invoke-virtual {v0}, Lcom/batch/android/f/b;->h()V

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method
