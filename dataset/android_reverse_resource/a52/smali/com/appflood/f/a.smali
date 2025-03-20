.class public Lcom/appflood/f/a;
.super Landroid/view/View;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/f/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/appflood/f/a;->postInvalidate()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/f/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appflood/f/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appflood/f/a;->postInvalidate()V

    return-void
.end method
