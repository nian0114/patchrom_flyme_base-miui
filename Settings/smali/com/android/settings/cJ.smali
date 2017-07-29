.class Lcom/android/settings_ex/cJ;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic mi:Landroid/view/View;

.field final synthetic mj:Lcom/android/settings_ex/cH;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cH;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings_ex/cJ;->mj:Lcom/android/settings_ex/cH;

    iput-object p2, p0, Lcom/android/settings_ex/cJ;->mi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/cJ;->mj:Lcom/android/settings_ex/cH;

    iget-object v0, v0, Lcom/android/settings_ex/cH;->mg:Lcom/android/settings_ex/DreamSettings;

    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->a(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/cA;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/cJ;->mi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/cB;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/cA;->a(Lcom/android/settings_ex/cB;)V

    .line 338
    return-void
.end method
