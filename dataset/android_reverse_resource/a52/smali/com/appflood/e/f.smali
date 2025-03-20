.class public final Lcom/appflood/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# instance fields
.field private synthetic a:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/e/f;->a:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 0

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/appflood/e/f;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    :cond_0
    return-void
.end method
