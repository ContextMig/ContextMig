.class final Lcom/appflood/d/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/d/a$a;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/appflood/d/a$a;


# direct methods
.method constructor <init>(Lcom/appflood/d/a$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/d/a$a$1;->b:Lcom/appflood/d/a$a;

    iput p2, p0, Lcom/appflood/d/a$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appflood/d/a$a$1;->b:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/appflood/d/a$a$1;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
