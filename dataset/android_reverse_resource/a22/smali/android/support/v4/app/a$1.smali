.class final Landroid/support/v4/app/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/a$1;->a:[Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/a$1;->b:Landroid/app/Activity;

    iput p3, p0, Landroid/support/v4/app/a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/app/a$1;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [I

    iget-object v0, p0, Landroid/support/v4/app/a$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v4/app/a$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/a$1;->a:[Ljava/lang/String;

    array-length v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v5, p0, Landroid/support/v4/app/a$1;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a$1;->b:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/b;

    iget v2, p0, Landroid/support/v4/app/a$1;->c:I

    iget-object v3, p0, Landroid/support/v4/app/a$1;->a:[Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Landroid/support/v4/app/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
