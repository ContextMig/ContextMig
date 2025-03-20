.class final Ldouzifly/list/widget/FontSizeBar$c;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldouzifly/list/widget/FontSizeBar;
.end annotation


# static fields
.field public static final a:Ldouzifly/list/widget/FontSizeBar$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldouzifly/list/widget/FontSizeBar$c;

    invoke-direct {v0}, Ldouzifly/list/widget/FontSizeBar$c;-><init>()V

    sput-object v0, Ldouzifly/list/widget/FontSizeBar$c;->a:Ldouzifly/list/widget/FontSizeBar$c;

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

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar$c;->b()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final b()F
    .locals 2

    sget-object v0, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v0}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method
