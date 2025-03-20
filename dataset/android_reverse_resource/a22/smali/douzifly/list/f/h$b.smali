.class final Ldouzifly/list/f/h$b;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldouzifly/list/f/h;
.end annotation


# static fields
.field public static final a:Ldouzifly/list/f/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldouzifly/list/f/h$b;

    invoke-direct {v0}, Ldouzifly/list/f/h$b;-><init>()V

    sput-object v0, Ldouzifly/list/f/h$b;->a:Ldouzifly/list/f/h$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/f/h$b;->b()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method
