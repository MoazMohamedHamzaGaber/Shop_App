import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_states.dart';
import 'package:e_commerce/feature/setting/presentation/view/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/errors/custom_error.dart';
import '../../../../../core/utils/constant.dart';
import '../../manage/cubit/setting_cubit.dart';
import 'account_image_and_text.dart';
import 'button_section.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>SettingCubit()..getProfile(),
      child: BlocConsumer<SettingCubit,SettingStates>(
        listener: (BuildContext context, state) {
          if(state is UpdateProfileSuccessStates)
            {
              if(state.profileModel.status!)
                {
                  showToast(
                      text: 'Update Successfully',
                      color: Colors.green,
                  );
                }
            }
        },
        builder: (BuildContext context, Object? state) {
          if(SettingCubit().get(context).profileModel !=null){
            return const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children:  [
                  AccountImageAndTextSection(),
                  TextFieldView(),
                  AccountButtonViewSection(),
                ],
              ),
            );
          }else if (state is ProfileErrorStates) {
            return CustomError(text: state.error);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }


}
