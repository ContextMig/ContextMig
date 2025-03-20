.class final Lcom/appflood/c/d$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/appflood/c/d$b;


# direct methods
.method constructor <init>(Lcom/appflood/c/d$b;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/d$b$1;->b:Lcom/appflood/c/d$b;

    iput-object p2, p0, Lcom/appflood/c/d$b$1;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/appflood/c/d$b$1$1;

    invoke-direct {v0, p0}, Lcom/appflood/c/d$b$1$1;-><init>(Lcom/appflood/c/d$b$1;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
