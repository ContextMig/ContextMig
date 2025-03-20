.class final Lcom/appflood/mraid/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/s;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/appflood/mraid/s;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/s$1;->b:Lcom/appflood/mraid/s;

    iput-object p2, p0, Lcom/appflood/mraid/s$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/mraid/s$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appflood/mraid/s$1$1;

    invoke-direct {v1, p0}, Lcom/appflood/mraid/s$1$1;-><init>(Lcom/appflood/mraid/s$1;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    return-void
.end method
