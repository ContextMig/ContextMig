.class final Ldouzifly/list/b/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/b/e;->a(Ljava/util/List;)V
.end annotation


# static fields
.field public static final a:Ldouzifly/list/b/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldouzifly/list/b/e$a;

    invoke-direct {v0}, Ldouzifly/list/b/e$a;-><init>()V

    sput-object v0, Ldouzifly/list/b/e$a;->a:Ldouzifly/list/b/e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)I
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t1"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ldouzifly/list/b/b;->a(Ldouzifly/list/b/b;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ldouzifly/list/b/b;

    check-cast p2, Ldouzifly/list/b/b;

    invoke-virtual {p0, p1, p2}, Ldouzifly/list/b/e$a;->a(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)I

    move-result v0

    return v0
.end method
