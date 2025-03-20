.class final Lcom/appflood/c/a$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/a;->a(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/a;


# direct methods
.method constructor <init>(Lcom/appflood/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/a$3;->a:Lcom/appflood/c/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appflood/c/a$3;->a:Lcom/appflood/c/a;

    invoke-virtual {v0}, Lcom/appflood/c/a;->a()V

    return-void
.end method
