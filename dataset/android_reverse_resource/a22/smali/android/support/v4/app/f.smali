.class Landroid/support/v4/app/f;
.super Landroid/app/SharedElementCallback;


# instance fields
.field private a:Landroid/support/v4/app/e;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/e;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/e;

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/e;->a(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/e;->a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/e;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/e;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/e;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
