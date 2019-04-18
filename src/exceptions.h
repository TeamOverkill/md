class ExceptionBase : public std::exception{
    const char *file;
    const char *func;
    const char *info;

public:
    const char* get_file(){ return file; };
    const char* get_func(){ return func; };
    const char* get_info(){ return info; };
};

class ParticleException : ExceptionBase{

};