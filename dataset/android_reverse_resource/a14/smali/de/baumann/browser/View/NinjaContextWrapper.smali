.class public Lde/baumann/browser/View/NinjaContextWrapper;
.super Landroid/content/ContextWrapper;
.source "NinjaContextWrapper.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lde/baumann/browser/View/NinjaContextWrapper;->context:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Lde/baumann/browser/Unit/HelperUnit;->setTheme(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 20
    iget-object v0, p0, Lde/baumann/browser/View/NinjaContextWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method
