.class public Landroid/support/v4/view/a/w;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/w;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIZI)Landroid/support/v4/view/a/w;
    .locals 2

    new-instance v0, Landroid/support/v4/view/a/w;

    invoke-static {}, Landroid/support/v4/view/a/l;->w()Landroid/support/v4/view/a/q;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/support/v4/view/a/q;->a(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/w;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
