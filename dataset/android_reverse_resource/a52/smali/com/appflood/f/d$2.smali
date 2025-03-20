.class final Lcom/appflood/f/d$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/f/d;


# direct methods
.method constructor <init>(Lcom/appflood/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/f/d$2;->a:Lcom/appflood/f/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appflood/f/d$2;->a:Lcom/appflood/f/d;

    invoke-virtual {v0}, Lcom/appflood/f/d;->postInvalidate()V

    return-void
.end method
