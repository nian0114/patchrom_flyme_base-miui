.class Lcom/android/settings_ex/fy;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic uf:Lcom/android/settings_ex/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiTetherSettings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/settings_ex/fy;->uf:Lcom/android/settings_ex/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/fy;->uf:Lcom/android/settings_ex/MiuiTetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/MiuiTetherSettings;->a(Lcom/android/settings_ex/MiuiTetherSettings;I)V

    .line 403
    return-void
.end method
