.class final Lcom/appflood/c/c$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/c;


# direct methods
.method constructor <init>(Lcom/appflood/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/c$3;->a:Lcom/appflood/c/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appflood/c/c$3;->a:Lcom/appflood/c/c;

    invoke-virtual {v0}, Lcom/appflood/c/c;->a()V

    return-void
.end method
