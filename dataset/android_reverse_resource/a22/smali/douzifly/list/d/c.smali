.class public final Ldouzifly/list/d/c;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/b/g;)V
    .locals 0

    invoke-direct {p0}, Ldouzifly/list/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ldouzifly/list/d/b;
    .locals 1

    sget-object v0, Ldouzifly/list/d/b;->a:Ldouzifly/list/d/b;

    invoke-virtual {v0}, Ldouzifly/list/d/b;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Ldouzifly/list/d/b;->a:Ldouzifly/list/d/b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ldouzifly/list/d/b;->b:Ldouzifly/list/d/b;

    goto :goto_0
.end method
