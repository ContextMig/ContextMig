.class final Lcom/appflood/d/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/appflood/d/a;


# direct methods
.method constructor <init>(Lcom/appflood/d/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/d/a$3;->b:Lcom/appflood/d/a;

    iput-object p2, p0, Lcom/appflood/d/a$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appflood/d/a$3;->b:Lcom/appflood/d/a;

    iget-object v1, p0, Lcom/appflood/d/a$3;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    return-void
.end method
