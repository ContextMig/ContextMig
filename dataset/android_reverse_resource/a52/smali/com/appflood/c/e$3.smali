.class public final Lcom/appflood/c/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/appflood/AppFlood$AFRequestDelegate;

.field private synthetic c:I


# direct methods
.method public constructor <init>(ILcom/appflood/AppFlood$AFRequestDelegate;I)V
    .locals 0

    iput p1, p0, Lcom/appflood/c/e$3;->a:I

    iput-object p2, p0, Lcom/appflood/c/e$3;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    iput p3, p0, Lcom/appflood/c/e$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget v0, p0, Lcom/appflood/c/e$3;->a:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/appflood/c/e$3;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iget-object v2, v0, Lcom/appflood/c/g;->b:[Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    array-length v5, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    new-instance v6, Lcom/appflood/b/b;

    aget-object v7, v2, v0

    invoke-direct {v6, v7}, Lcom/appflood/b/b;-><init>(Lorg/json/JSONObject;)V

    new-instance v7, Lcom/appflood/c/e$11;

    invoke-direct {v7, v3, v1, v4, v5}, Lcom/appflood/c/e$11;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/appflood/AppFlood$AFRequestDelegate;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    iput-object v7, v6, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v6}, Lcom/appflood/b/b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "Failed to preload full ad, adsData is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/appflood/c/e$3;->a:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/appflood/c/e$3;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-static {v0}, Lcom/appflood/c/e;->a(Lcom/appflood/AppFlood$AFRequestDelegate;)V

    :cond_2
    iget v0, p0, Lcom/appflood/c/e$3;->a:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    iget v0, p0, Lcom/appflood/c/e$3;->c:I

    iget-object v1, p0, Lcom/appflood/c/e$3;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/appflood/c/g;->a(ILcom/appflood/AppFlood$AFRequestDelegate;)V

    :cond_3
    return-void
.end method
